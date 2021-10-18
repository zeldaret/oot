/*
  ==============================================================================

  This is an automatically generated GUI class created by the Projucer!

  Be careful when adding custom code to these files, as only the code within
  the "//[xyz]" and "//[/xyz]" sections will be retained when the file is loaded
  and re-saved.

  Created with Projucer version: 6.0.1

  ------------------------------------------------------------------------------

  The Projucer is part of the JUCE library.
  Copyright (c) 2020 - Raw Material Software Limited.

  ==============================================================================
*/

#pragma once

//[Headers]     -- You can add your own extra header files here --
/*
 * ============================================================================
 *
 * SeqABIEditor.cpp
 * GUI component to edit the definition of the Nintendo 64 Music Macro Language
 * (Audioseq) format
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
#include "Common.hpp"
#include "TextListBox.hpp"
//[/Headers]



//==============================================================================
/**
                                                                    //[Comments]
    An auto-generated component, created by the Projucer.

    Describe your class and how it works here!
                                                                    //[/Comments]
*/
class SeqABIEditor  : public Component,
                      private TextListBox::Listener,
                      private TextEditor::Listener,
                      public juce::Button::Listener,
                      public juce::ComboBox::Listener
{
public:
    //==============================================================================
    SeqABIEditor (String abi_name);
    ~SeqABIEditor() override;

    //==============================================================================
    //[UserMethods]     -- You can add your own custom methods in this section.
    void save();
    void userTriedToCloseWindow() override;
    //[/UserMethods]

    void paint (juce::Graphics& g) override;
    void resized() override;
    void buttonClicked (juce::Button* buttonThatWasClicked) override;
    void comboBoxChanged (juce::ComboBox* comboBoxThatHasChanged) override;



private:
    //[UserVariables]   -- You can add your own custom variables in this section.
    void rowSelected(TextListBox* parent, int row) override;
    void textEditorTextChanged(TextEditor& editorThatWasChanged) override;

    String getCmdDescription(ValueTree cmd);
    void fillCmdInfo();
    void fillParamInfo();
    void fillMeaningsBox(String action);

    String abiname;
    ValueTree abi, selcmd, selparam;
    bool needssaving;

    std::unique_ptr<TextListBox> lstCmds;
    std::unique_ptr<TextListBox> lstParams;
    //[/UserVariables]

    //==============================================================================
    std::unique_ptr<juce::Label> lblTitle;
    std::unique_ptr<juce::TextButton> btnCmdAdd;
    std::unique_ptr<juce::TextButton> btnDelete;
    std::unique_ptr<juce::TextButton> btnCmdUp;
    std::unique_ptr<juce::TextButton> btnCmdDown;
    std::unique_ptr<juce::GroupComponent> grpNames;
    std::unique_ptr<juce::Label> lblCmdNameCmm;
    std::unique_ptr<juce::GroupComponent> grpValidIn;
    std::unique_ptr<juce::Label> lblCmdNameCanon;
    std::unique_ptr<juce::Label> lblCmdNameOld;
    std::unique_ptr<juce::TextEditor> txtCmdNameCmm;
    std::unique_ptr<juce::TextEditor> txtCmdNameCanon;
    std::unique_ptr<juce::TextEditor> txtCmdNameOld;
    std::unique_ptr<juce::Label> lblCmd;
    std::unique_ptr<juce::TextEditor> txtCmd;
    std::unique_ptr<juce::Label> lblTo;
    std::unique_ptr<juce::TextEditor> txtCmdEnd;
    std::unique_ptr<juce::ComboBox> cbxAction;
    std::unique_ptr<juce::ToggleButton> chkValidInSeq;
    std::unique_ptr<juce::ToggleButton> chkValidInChn;
    std::unique_ptr<juce::ToggleButton> chkValidInTrk;
    std::unique_ptr<juce::Label> lblAction;
    std::unique_ptr<juce::TextEditor> txtComments;
    std::unique_ptr<juce::Label> lblComments;
    std::unique_ptr<juce::Label> lblParams;
    std::unique_ptr<juce::GroupComponent> grpParam;
    std::unique_ptr<juce::Label> lblParamName;
    std::unique_ptr<juce::Label> lblParamMeaning;
    std::unique_ptr<juce::TextEditor> txtParamName;
    std::unique_ptr<juce::ComboBox> cbxMeaning;
    std::unique_ptr<juce::ToggleButton> optDataSrcOffset;
    std::unique_ptr<juce::ToggleButton> optDataSrcConstant;
    std::unique_ptr<juce::ToggleButton> optDataSrcFixed;
    std::unique_ptr<juce::ToggleButton> optDataSrcVariable;
    std::unique_ptr<juce::TextButton> btnParamAdd;
    std::unique_ptr<juce::TextButton> btnParamDelete;
    std::unique_ptr<juce::TextButton> btnParamUp;
    std::unique_ptr<juce::TextButton> btnParamDown;
    std::unique_ptr<juce::Label> lblDataLen;
    std::unique_ptr<juce::TextEditor> txtDataLen;
    std::unique_ptr<juce::TextButton> btnSave;
    std::unique_ptr<juce::TextEditor> txtCC;
    std::unique_ptr<juce::Label> lblCC;
    std::unique_ptr<juce::TextButton> btnCCHelp;


    //==============================================================================
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (SeqABIEditor)
};

//[EndFile] You can add extra defines here...
//[/EndFile]

