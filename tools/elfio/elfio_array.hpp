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

#ifndef ELFIO_ARRAY_HPP
#define ELFIO_ARRAY_HPP

#include <algorithm>

namespace ELFIO {

//------------------------------------------------------------------------------
template <class S, typename T> class array_section_accessor_template
{
  public:
    //------------------------------------------------------------------------------
    array_section_accessor_template( const elfio& elf_file, S* section )
        : elf_file( elf_file ), array_section( section )
    {
    }

    //------------------------------------------------------------------------------
    Elf_Xword get_entries_num() const
    {
        Elf_Xword entry_size = sizeof( T );
        return array_section->get_size() / entry_size;
    }

    //------------------------------------------------------------------------------
    bool get_entry( Elf_Xword index, Elf64_Addr& address ) const
    {
        if ( index >= get_entries_num() ) { // Is index valid
            return false;
        }

        const endianess_convertor& convertor = elf_file.get_convertor();

        const T temp = *reinterpret_cast<const T*>( array_section->get_data() +
                                                    index * sizeof( T ) );
        address      = convertor( temp );

        return true;
    }

    //------------------------------------------------------------------------------
    void add_entry( Elf64_Addr address )
    {
        const endianess_convertor& convertor = elf_file.get_convertor();

        T temp = convertor( (T)address );
        array_section->append_data( reinterpret_cast<char*>( &temp ),
                                    sizeof( temp ) );
    }

  private:
    //------------------------------------------------------------------------------
    const elfio& elf_file;
    S*           array_section;
};

template <typename T = Elf32_Word>
using array_section_accessor = array_section_accessor_template<section, T>;
template <typename T = Elf32_Word>
using const_array_section_accessor =
    array_section_accessor_template<const section, T>;

} // namespace ELFIO

#endif // ELFIO_ARRAY_HPP
