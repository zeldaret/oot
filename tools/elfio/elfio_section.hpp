/*
Copyright (C) 2001-present by Serge Lamikhov-Center

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

#ifndef ELFIO_SECTION_HPP
#define ELFIO_SECTION_HPP

#include <string>
#include <iostream>
#include <new>
#include <limits>

namespace ELFIO {

class section
{
    friend class elfio;

  public:
    virtual ~section() = default;

    ELFIO_GET_ACCESS_DECL( Elf_Half, index );
    ELFIO_GET_SET_ACCESS_DECL( std::string, name );
    ELFIO_GET_SET_ACCESS_DECL( Elf_Word, type );
    ELFIO_GET_SET_ACCESS_DECL( Elf_Xword, flags );
    ELFIO_GET_SET_ACCESS_DECL( Elf_Word, info );
    ELFIO_GET_SET_ACCESS_DECL( Elf_Word, link );
    ELFIO_GET_SET_ACCESS_DECL( Elf_Xword, addr_align );
    ELFIO_GET_SET_ACCESS_DECL( Elf_Xword, entry_size );
    ELFIO_GET_SET_ACCESS_DECL( Elf64_Addr, address );
    ELFIO_GET_SET_ACCESS_DECL( Elf_Xword, size );
    ELFIO_GET_SET_ACCESS_DECL( Elf_Word, name_string_offset );
    ELFIO_GET_ACCESS_DECL( Elf64_Off, offset );

    virtual const char* get_data() const                                = 0;
    virtual void        set_data( const char* pData, Elf_Word size )    = 0;
    virtual void        set_data( const std::string& data )             = 0;
    virtual void        append_data( const char* pData, Elf_Word size ) = 0;
    virtual void        append_data( const std::string& data )          = 0;
    virtual size_t      get_stream_size() const                         = 0;
    virtual void        set_stream_size( size_t value )                 = 0;

  protected:
    ELFIO_SET_ACCESS_DECL( Elf64_Off, offset );
    ELFIO_SET_ACCESS_DECL( Elf_Half, index );

    virtual void load( std::istream& stream, std::streampos header_offset ) = 0;
    virtual void save( std::ostream&  stream,
                       std::streampos header_offset,
                       std::streampos data_offset )                         = 0;
    virtual bool is_address_initialized() const                             = 0;
};

template <class T> class section_impl : public section
{
  public:
    //------------------------------------------------------------------------------
    section_impl( const endianess_convertor* convertor,
                  const address_translator*  translator )
        : convertor( convertor ), translator( translator )
    {
        std::fill_n( reinterpret_cast<char*>( &header ), sizeof( header ),
                     '\0' );
        is_address_set = false;
        data           = nullptr;
        data_size      = 0;
        index          = 0;
        stream_size    = 0;
    }

    //------------------------------------------------------------------------------
    ~section_impl() override { delete[] data; }

    //------------------------------------------------------------------------------
    // Section info functions
    ELFIO_GET_SET_ACCESS( Elf_Word, type, header.sh_type );
    ELFIO_GET_SET_ACCESS( Elf_Xword, flags, header.sh_flags );
    ELFIO_GET_SET_ACCESS( Elf_Xword, size, header.sh_size );
    ELFIO_GET_SET_ACCESS( Elf_Word, link, header.sh_link );
    ELFIO_GET_SET_ACCESS( Elf_Word, info, header.sh_info );
    ELFIO_GET_SET_ACCESS( Elf_Xword, addr_align, header.sh_addralign );
    ELFIO_GET_SET_ACCESS( Elf_Xword, entry_size, header.sh_entsize );
    ELFIO_GET_SET_ACCESS( Elf_Word, name_string_offset, header.sh_name );
    ELFIO_GET_ACCESS( Elf64_Addr, address, header.sh_addr );

    //------------------------------------------------------------------------------
    Elf_Half get_index() const override { return index; }

    //------------------------------------------------------------------------------
    std::string get_name() const override { return name; }

    //------------------------------------------------------------------------------
    void set_name( std::string name ) override { this->name = name; }

    //------------------------------------------------------------------------------
    void set_address( Elf64_Addr value ) override
    {
        header.sh_addr = value;
        header.sh_addr = ( *convertor )( header.sh_addr );
        is_address_set = true;
    }

    //------------------------------------------------------------------------------
    bool is_address_initialized() const override { return is_address_set; }

    //------------------------------------------------------------------------------
    const char* get_data() const override { return data; }

    //------------------------------------------------------------------------------
    void set_data( const char* raw_data, Elf_Word size ) override
    {
        if ( get_type() != SHT_NOBITS ) {
            delete[] data;
            data = new ( std::nothrow ) char[size];
            if ( nullptr != data && nullptr != raw_data ) {
                data_size = size;
                std::copy( raw_data, raw_data + size, data );
            }
            else {
                data_size = 0;
            }
        }

        set_size( data_size );
        if ( translator->empty() ) {
            set_stream_size( data_size );
        }
    }

    //------------------------------------------------------------------------------
    void set_data( const std::string& str_data ) override
    {
        return set_data( str_data.c_str(), (Elf_Word)str_data.size() );
    }

    //------------------------------------------------------------------------------
    void append_data( const char* raw_data, Elf_Word size ) override
    {
        if ( get_type() != SHT_NOBITS ) {
            if ( get_size() + size < data_size ) {
                std::copy( raw_data, raw_data + size, data + get_size() );
            }
            else {
                data_size      = 2 * ( data_size + size );
                char* new_data = new ( std::nothrow ) char[data_size];

                if ( nullptr != new_data ) {
                    std::copy( data, data + get_size(), new_data );
                    std::copy( raw_data, raw_data + size,
                               new_data + get_size() );
                    delete[] data;
                    data = new_data;
                }
                else {
                    size = 0;
                }
            }
            set_size( get_size() + size );
            if ( translator->empty() ) {
                set_stream_size( get_stream_size() + size );
            }
        }
    }

    //------------------------------------------------------------------------------
    void append_data( const std::string& str_data ) override
    {
        return append_data( str_data.c_str(), (Elf_Word)str_data.size() );
    }

    //------------------------------------------------------------------------------
    size_t get_stream_size() const override { return stream_size; }

    //------------------------------------------------------------------------------
    void set_stream_size( size_t value ) override { stream_size = value; }

    //------------------------------------------------------------------------------
  protected:
    //------------------------------------------------------------------------------
    ELFIO_GET_SET_ACCESS( Elf64_Off, offset, header.sh_offset );

    //------------------------------------------------------------------------------
    void set_index( Elf_Half value ) override { index = value; }

    //------------------------------------------------------------------------------
    void load( std::istream& stream, std::streampos header_offset ) override
    {
        std::fill_n( reinterpret_cast<char*>( &header ), sizeof( header ),
                     '\0' );

        if ( translator->empty() ) {
            stream.seekg( 0, stream.end );
            set_stream_size( stream.tellg() );
        }
        else {
            set_stream_size( std::numeric_limits<size_t>::max() );
        }

        stream.seekg( ( *translator )[header_offset] );
        stream.read( reinterpret_cast<char*>( &header ), sizeof( header ) );

        Elf_Xword size = get_size();
        if ( nullptr == data && SHT_NULL != get_type() &&
             SHT_NOBITS != get_type() && size < get_stream_size() ) {
            data = new ( std::nothrow ) char[size + 1];

            if ( ( 0 != size ) && ( nullptr != data ) ) {
                stream.seekg(
                    ( *translator )[( *convertor )( header.sh_offset )] );
                stream.read( data, size );
                data[size] = 0; // Ensure data is ended with 0 to avoid oob read
                data_size  = size;
            }
            else {
                data_size = 0;
            }
        }
    }

    //------------------------------------------------------------------------------
    void save( std::ostream&  stream,
               std::streampos header_offset,
               std::streampos data_offset ) override
    {
        if ( 0 != get_index() ) {
            header.sh_offset = data_offset;
            header.sh_offset = ( *convertor )( header.sh_offset );
        }

        save_header( stream, header_offset );
        if ( get_type() != SHT_NOBITS && get_type() != SHT_NULL &&
             get_size() != 0 && data != nullptr ) {
            save_data( stream, data_offset );
        }
    }

    //------------------------------------------------------------------------------
  private:
    //------------------------------------------------------------------------------
    void save_header( std::ostream& stream, std::streampos header_offset ) const
    {
        adjust_stream_size( stream, header_offset );
        stream.write( reinterpret_cast<const char*>( &header ),
                      sizeof( header ) );
    }

    //------------------------------------------------------------------------------
    void save_data( std::ostream& stream, std::streampos data_offset ) const
    {
        adjust_stream_size( stream, data_offset );
        stream.write( get_data(), get_size() );
    }

    //------------------------------------------------------------------------------
  private:
    T                          header;
    Elf_Half                   index;
    std::string                name;
    char*                      data;
    Elf_Word                   data_size;
    const endianess_convertor* convertor;
    const address_translator*  translator;
    bool                       is_address_set;
    size_t                     stream_size;
};

} // namespace ELFIO

#endif // ELFIO_SECTION_HPP
