/*
 * ============================================================================
 *
 * TextListBox.hpp
 * Utility list box class used in all Sauraen projects, because Juce fails to
 * provide one
 * 
 * From seq64 - Sequenced music editor for first-party N64 games
 * Copyright (C) 2014-2020 Sauraen
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 * ============================================================================
*/

#pragma once

#include "Common.hpp"

class TextListBox : public ListBox, ListBoxModel
{
public:
    class Listener{
    public:
        virtual ~Listener() {}
        virtual void rowSelected(TextListBox* parent, int row)=0;
        virtual void rowDoubleClicked(TextListBox* parent, int row);
    };
    
    TextListBox(Listener *l, String headerCaption = "");
    ~TextListBox();
    
    int getNumRows() override;
    String get(int i);
    int indexOf(String s);
    void set(int i, String s);
    
    void add(String s);
    void addIfNotPresent(String s);
    void insert(int i, String s);
    void remove(int i);
    void clear();
    
    bool isItemSelected(String s);
    
    void setSelectAddedItems(bool shouldSelect);
    void setListener(Listener* l);
    void setFont(Font newfont);
    
    void paintListBoxItem(int rowNumber, Graphics &g, int width, int height, bool rowIsSelected) override;
    
    void selectedRowsChanged(int lastRowSelected) override;
    void listBoxItemDoubleClicked(int row, const MouseEvent& e) override;
    
private:
    StringArray strings;
    Listener* listener;
    Font font;
    
    bool selectonadd;
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (TextListBox)
};
