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

#ifndef ELFIO_UTILS_HPP
#define ELFIO_UTILS_HPP

#include <cstdint>
#include <ostream>

#define ELFIO_GET_ACCESS_DECL( TYPE, NAME ) virtual TYPE get_##NAME() const = 0

#define ELFIO_SET_ACCESS_DECL( TYPE, NAME ) \
    virtual void set_##NAME( TYPE value ) = 0

#define ELFIO_GET_SET_ACCESS_DECL( TYPE, NAME ) \
    virtual TYPE get_##NAME() const       = 0;  \
    virtual void set_##NAME( TYPE value ) = 0

#define ELFIO_GET_ACCESS( TYPE, NAME, FIELD ) \
    TYPE get_##NAME() const override { return ( *convertor )( FIELD ); }

#define ELFIO_SET_ACCESS( TYPE, NAME, FIELD ) \
    void set_##NAME( TYPE value ) override    \
    {                                         \
        FIELD = value;                        \
        FIELD = ( *convertor )( FIELD );      \
    }
#define ELFIO_GET_SET_ACCESS( TYPE, NAME, FIELD )                        \
    TYPE get_##NAME() const override { return ( *convertor )( FIELD ); } \
    void set_##NAME( TYPE value ) override                               \
    {                                                                    \
        FIELD = value;                                                   \
        FIELD = ( *convertor )( FIELD );                                 \
    }

namespace ELFIO {

//------------------------------------------------------------------------------
class endianess_convertor
{
  public:
    //------------------------------------------------------------------------------
    endianess_convertor() { need_conversion = false; }

    //------------------------------------------------------------------------------
    void setup( unsigned char elf_file_encoding )
    {
        need_conversion = ( elf_file_encoding != get_host_encoding() );
    }

    //------------------------------------------------------------------------------
    uint64_t operator()( uint64_t value ) const
    {
        if ( !need_conversion ) {
            return value;
        }
        value = ( ( value & 0x00000000000000FFull ) << 56 ) |
                ( ( value & 0x000000000000FF00ull ) << 40 ) |
                ( ( value & 0x0000000000FF0000ull ) << 24 ) |
                ( ( value & 0x00000000FF000000ull ) << 8 ) |
                ( ( value & 0x000000FF00000000ull ) >> 8 ) |
                ( ( value & 0x0000FF0000000000ull ) >> 24 ) |
                ( ( value & 0x00FF000000000000ull ) >> 40 ) |
                ( ( value & 0xFF00000000000000ull ) >> 56 );

        return value;
    }

    //------------------------------------------------------------------------------
    int64_t operator()( int64_t value ) const
    {
        if ( !need_conversion ) {
            return value;
        }
        return (int64_t)(*this)( (uint64_t)value );
    }

    //------------------------------------------------------------------------------
    uint32_t operator()( uint32_t value ) const
    {
        if ( !need_conversion ) {
            return value;
        }
        value =
            ( ( value & 0x000000FF ) << 24 ) | ( ( value & 0x0000FF00 ) << 8 ) |
            ( ( value & 0x00FF0000 ) >> 8 ) | ( ( value & 0xFF000000 ) >> 24 );

        return value;
    }

    //------------------------------------------------------------------------------
    int32_t operator()( int32_t value ) const
    {
        if ( !need_conversion ) {
            return value;
        }
        return (int32_t)(*this)( (uint32_t)value );
    }

    //------------------------------------------------------------------------------
    uint16_t operator()( uint16_t value ) const
    {
        if ( !need_conversion ) {
            return value;
        }
        value = ( ( value & 0x00FF ) << 8 ) | ( ( value & 0xFF00 ) >> 8 );

        return value;
    }

    //------------------------------------------------------------------------------
    int16_t operator()( int16_t value ) const
    {
        if ( !need_conversion ) {
            return value;
        }
        return (int16_t)(*this)( (uint16_t)value );
    }

    //------------------------------------------------------------------------------
    int8_t operator()( int8_t value ) const { return value; }

    //------------------------------------------------------------------------------
    uint8_t operator()( uint8_t value ) const { return value; }

    //------------------------------------------------------------------------------
  private:
    //------------------------------------------------------------------------------
    unsigned char get_host_encoding() const
    {
        static const int tmp = 1;
        if ( 1 == *reinterpret_cast<const char*>( &tmp ) ) {
            return ELFDATA2LSB;
        }
        else {
            return ELFDATA2MSB;
        }
    }

    //------------------------------------------------------------------------------
    bool need_conversion;
};

//------------------------------------------------------------------------------
struct address_translation
{
    address_translation( uint64_t start, uint64_t size, uint64_t mapped_to )
        : start( start ), size( size ), mapped_to( mapped_to ){};
    std::streampos start;
    std::streampos size;
    std::streampos mapped_to;
};

//------------------------------------------------------------------------------
class address_translator
{
  public:
    //------------------------------------------------------------------------------
    void set_address_translation( std::vector<address_translation>& addr_trans )
    {
        addr_translations = addr_trans;

        std::sort(
            addr_translations.begin(), addr_translations.end(),
            []( address_translation& a, address_translation& b ) -> bool {
                return a.start < b.start;
            } );
    }

    //------------------------------------------------------------------------------
    std::streampos operator[]( std::streampos value ) const
    {
        if ( addr_translations.empty() ) {
            return value;
        }

        for ( auto& t : addr_translations ) {
            if ( ( t.start <= value ) && ( ( value - t.start ) < t.size ) ) {
                return value - t.start + t.mapped_to;
            }
        }

        return value;
    }

    bool empty() const { return addr_translations.empty(); }

  private:
    std::vector<address_translation> addr_translations;
};

//------------------------------------------------------------------------------
inline uint32_t elf_hash( const unsigned char* name )
{
    uint32_t h = 0, g = 0;
    while ( *name != '\0' ) {
        h = ( h << 4 ) + *name++;
        g = h & 0xf0000000;
        if ( g != 0 )
            h ^= g >> 24;
        h &= ~g;
    }
    return h;
}

//------------------------------------------------------------------------------
inline uint32_t elf_gnu_hash( const unsigned char* s )
{
    uint32_t h = 0x1505;
    for ( unsigned char c = *s; c != '\0'; c = *++s )
        h = ( h << 5 ) + h + c;
    return h;
}

//------------------------------------------------------------------------------
inline std::string to_hex_string( uint64_t value )
{
    std::string str;

    while ( value ) {
        auto digit = value & 0xF;
        if ( digit < 0xA ) {
            str = char( '0' + digit ) + str;
        }
        else {
            str = char( 'A' + digit - 0xA ) + str;
        }
        value >>= 4;
    }

    return "0x" + str;
}

//------------------------------------------------------------------------------
inline void adjust_stream_size( std::ostream& stream, std::streamsize offset )
{
    stream.seekp( 0, std::ios_base::end );
    if ( stream.tellp() < offset ) {
        std::streamsize size = offset - stream.tellp();
        stream.write( std::string( size, '\0' ).c_str(), size );
    }
    stream.seekp( offset );
}

} // namespace ELFIO

#endif // ELFIO_UTILS_HPP
