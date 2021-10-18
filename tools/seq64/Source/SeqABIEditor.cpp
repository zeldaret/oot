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

//[Headers] You can add your own extra header files here...
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
#include "SeqFile.hpp"
//[/Headers]

#include "SeqABIEditor.hpp"


//[MiscUserDefs] You can add your own user definitions and misc code here...
//[/MiscUserDefs]

//==============================================================================
SeqABIEditor::SeqABIEditor (String abi_name)
    : abiname(abi_name)
{
    //[Constructor_pre] You can add your own custom stuff here..
    //[/Constructor_pre]

    lblTitle.reset (new juce::Label ("lblTitle",
                                     TRANS("Audioseq / Nintendo 64 Music Macro Language\n"
                                     "ABI definition file: /foo/bar.xml")));
    addAndMakeVisible (lblTitle.get());
    lblTitle->setFont (juce::Font (15.00f, juce::Font::plain));
    lblTitle->setJustificationType (juce::Justification::centredLeft);
    lblTitle->setEditable (false, false, false);
    lblTitle->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblTitle->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblTitle->setBounds (0, 0, 408, 32);

    btnCmdAdd.reset (new juce::TextButton ("btnCmdAdd"));
    addAndMakeVisible (btnCmdAdd.get());
    btnCmdAdd->setButtonText (TRANS("Add"));
    btnCmdAdd->setConnectedEdges (juce::Button::ConnectedOnLeft | juce::Button::ConnectedOnBottom);
    btnCmdAdd->addListener (this);

    btnCmdAdd->setBounds (424, 40, 48, 24);

    btnDelete.reset (new juce::TextButton ("btnDelete"));
    addAndMakeVisible (btnDelete.get());
    btnDelete->setButtonText (TRANS("Del"));
    btnDelete->setConnectedEdges (juce::Button::ConnectedOnLeft | juce::Button::ConnectedOnTop);
    btnDelete->addListener (this);

    btnDelete->setBounds (424, 64, 48, 24);

    btnCmdUp.reset (new juce::TextButton ("btnCmdUp"));
    addAndMakeVisible (btnCmdUp.get());
    btnCmdUp->setButtonText (TRANS("Up"));
    btnCmdUp->setConnectedEdges (juce::Button::ConnectedOnLeft | juce::Button::ConnectedOnBottom);
    btnCmdUp->addListener (this);

    btnCmdUp->setBounds (424, 256, 48, 24);

    btnCmdDown.reset (new juce::TextButton ("btnCmdDown"));
    addAndMakeVisible (btnCmdDown.get());
    btnCmdDown->setButtonText (TRANS("Dn"));
    btnCmdDown->setConnectedEdges (juce::Button::ConnectedOnLeft | juce::Button::ConnectedOnTop);
    btnCmdDown->addListener (this);

    btnCmdDown->setBounds (424, 280, 48, 24);

    grpNames.reset (new juce::GroupComponent ("grpNames",
                                              TRANS("Command Names")));
    addAndMakeVisible (grpNames.get());

    grpNames->setBounds (0, 312, 264, 96);

    lblCmdNameCmm.reset (new juce::Label ("lblCmdNameCmm",
                                          TRANS("Community:")));
    addAndMakeVisible (lblCmdNameCmm.get());
    lblCmdNameCmm->setFont (juce::Font (15.00f, juce::Font::plain));
    lblCmdNameCmm->setJustificationType (juce::Justification::centredLeft);
    lblCmdNameCmm->setEditable (false, false, false);
    lblCmdNameCmm->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblCmdNameCmm->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblCmdNameCmm->setBounds (8, 328, 96, 24);

    grpValidIn.reset (new juce::GroupComponent ("new group",
                                                TRANS("Valid in")));
    addAndMakeVisible (grpValidIn.get());

    grpValidIn->setBounds (264, 312, 216, 96);

    lblCmdNameCanon.reset (new juce::Label ("lblCmdNameCanon",
                                            TRANS("Canon:")));
    addAndMakeVisible (lblCmdNameCanon.get());
    lblCmdNameCanon->setFont (juce::Font (15.00f, juce::Font::plain));
    lblCmdNameCanon->setJustificationType (juce::Justification::centredLeft);
    lblCmdNameCanon->setEditable (false, false, false);
    lblCmdNameCanon->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblCmdNameCanon->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblCmdNameCanon->setBounds (8, 352, 96, 24);

    lblCmdNameOld.reset (new juce::Label ("lblCmdNameOld",
                                          TRANS("Canon (Old):")));
    addAndMakeVisible (lblCmdNameOld.get());
    lblCmdNameOld->setFont (juce::Font (15.00f, juce::Font::plain));
    lblCmdNameOld->setJustificationType (juce::Justification::centredLeft);
    lblCmdNameOld->setEditable (false, false, false);
    lblCmdNameOld->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblCmdNameOld->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblCmdNameOld->setBounds (8, 376, 96, 24);

    txtCmdNameCmm.reset (new juce::TextEditor ("txtCmdNameCmm"));
    addAndMakeVisible (txtCmdNameCmm.get());
    txtCmdNameCmm->setMultiLine (false);
    txtCmdNameCmm->setReturnKeyStartsNewLine (false);
    txtCmdNameCmm->setReadOnly (false);
    txtCmdNameCmm->setScrollbarsShown (true);
    txtCmdNameCmm->setCaretVisible (true);
    txtCmdNameCmm->setPopupMenuEnabled (true);
    txtCmdNameCmm->setText (juce::String());

    txtCmdNameCmm->setBounds (104, 328, 152, 24);

    txtCmdNameCanon.reset (new juce::TextEditor ("txtCmdNameCanon"));
    addAndMakeVisible (txtCmdNameCanon.get());
    txtCmdNameCanon->setMultiLine (false);
    txtCmdNameCanon->setReturnKeyStartsNewLine (false);
    txtCmdNameCanon->setReadOnly (false);
    txtCmdNameCanon->setScrollbarsShown (true);
    txtCmdNameCanon->setCaretVisible (true);
    txtCmdNameCanon->setPopupMenuEnabled (true);
    txtCmdNameCanon->setText (juce::String());

    txtCmdNameCanon->setBounds (104, 352, 152, 24);

    txtCmdNameOld.reset (new juce::TextEditor ("txtCmdNameOld"));
    addAndMakeVisible (txtCmdNameOld.get());
    txtCmdNameOld->setMultiLine (false);
    txtCmdNameOld->setReturnKeyStartsNewLine (false);
    txtCmdNameOld->setReadOnly (false);
    txtCmdNameOld->setScrollbarsShown (true);
    txtCmdNameOld->setCaretVisible (true);
    txtCmdNameOld->setPopupMenuEnabled (true);
    txtCmdNameOld->setText (juce::String());

    txtCmdNameOld->setBounds (104, 376, 152, 24);

    lblCmd.reset (new juce::Label ("lblCmd",
                                   TRANS("Cmd:")));
    addAndMakeVisible (lblCmd.get());
    lblCmd->setFont (juce::Font (15.00f, juce::Font::plain));
    lblCmd->setJustificationType (juce::Justification::centredLeft);
    lblCmd->setEditable (false, false, false);
    lblCmd->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblCmd->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblCmd->setBounds (0, 416, 48, 24);

    txtCmd.reset (new juce::TextEditor ("txtCmd"));
    addAndMakeVisible (txtCmd.get());
    txtCmd->setMultiLine (false);
    txtCmd->setReturnKeyStartsNewLine (false);
    txtCmd->setReadOnly (false);
    txtCmd->setScrollbarsShown (true);
    txtCmd->setCaretVisible (true);
    txtCmd->setPopupMenuEnabled (true);
    txtCmd->setText (juce::String());

    txtCmd->setBounds (48, 416, 40, 24);

    lblTo.reset (new juce::Label ("lblTo",
                                  TRANS("to")));
    addAndMakeVisible (lblTo.get());
    lblTo->setFont (juce::Font (15.00f, juce::Font::plain));
    lblTo->setJustificationType (juce::Justification::centredLeft);
    lblTo->setEditable (false, false, false);
    lblTo->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblTo->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblTo->setBounds (88, 416, 24, 24);

    txtCmdEnd.reset (new juce::TextEditor ("txtCmdEnd"));
    addAndMakeVisible (txtCmdEnd.get());
    txtCmdEnd->setMultiLine (false);
    txtCmdEnd->setReturnKeyStartsNewLine (false);
    txtCmdEnd->setReadOnly (false);
    txtCmdEnd->setScrollbarsShown (true);
    txtCmdEnd->setCaretVisible (true);
    txtCmdEnd->setPopupMenuEnabled (true);
    txtCmdEnd->setText (juce::String());

    txtCmdEnd->setBounds (112, 416, 40, 24);

    cbxAction.reset (new juce::ComboBox ("cbxAction"));
    addAndMakeVisible (cbxAction.get());
    cbxAction->setEditableText (false);
    cbxAction->setJustificationType (juce::Justification::centredLeft);
    cbxAction->setTextWhenNothingSelected (juce::String());
    cbxAction->setTextWhenNoChoicesAvailable (TRANS("(no choices)"));
    cbxAction->addItem (TRANS("No Action"), 1);
    cbxAction->addItem (TRANS("End of Data"), 2);
    cbxAction->addItem (TRANS("Delay"), 3);
    cbxAction->addItem (TRANS("Jump"), 4);
    cbxAction->addItem (TRANS("Branch"), 5);
    cbxAction->addItem (TRANS("Call"), 6);
    cbxAction->addItem (TRANS("Loop Start"), 7);
    cbxAction->addItem (TRANS("Loop Break"), 8);
    cbxAction->addItem (TRANS("Loop End"), 9);
    cbxAction->addItem (TRANS("Ptr Seq Header"), 10);
    cbxAction->addItem (TRANS("Ptr Channel Header"), 11);
    cbxAction->addItem (TRANS("Ptr Note Layer"), 12);
    cbxAction->addItem (TRANS("Seq Hdr Call Table"), 13);
    cbxAction->addItem (TRANS("Set Dyntable"), 14);
    cbxAction->addItem (TRANS("Channel from Dyntable"), 15);
    cbxAction->addItem (TRANS("Layer from Dyntable"), 16);
    cbxAction->addItem (TRANS("Dyntable from Dyntable"), 17);
    cbxAction->addItem (TRANS("Data from Dyntable"), 18);
    cbxAction->addItem (TRANS("Dyntable from Data"), 19);
    cbxAction->addItem (TRANS("Ptr Envelope"), 20);
    cbxAction->addItem (TRANS("Ptr Message"), 21);
    cbxAction->addItem (TRANS("Ptr Other Table"), 22);
    cbxAction->addItem (TRANS("Ptr Self"), 23);
    cbxAction->addItem (TRANS("Maybe Ptr"), 24);
    cbxAction->addItem (TRANS("Mute Behavior"), 25);
    cbxAction->addItem (TRANS("Mute Scale"), 26);
    cbxAction->addItem (TRANS("Channel Enable"), 27);
    cbxAction->addItem (TRANS("Channel Disable"), 28);
    cbxAction->addItem (TRANS("Master Volume"), 29);
    cbxAction->addItem (TRANS("Tempo"), 30);
    cbxAction->addItem (TRANS("Enable Long Notes"), 31);
    cbxAction->addItem (TRANS("CC or CC Group"), 32);
    cbxAction->addItem (TRANS("Chn Transpose"), 33);
    cbxAction->addItem (TRANS("Layer Transpose"), 34);
    cbxAction->addItem (TRANS("Note"), 35);
    cbxAction->addListener (this);

    cbxAction->setBounds (232, 416, 240, 24);

    chkValidInSeq.reset (new juce::ToggleButton ("chkValidInSeq"));
    addAndMakeVisible (chkValidInSeq.get());
    chkValidInSeq->setButtonText (TRANS("Seq Header / Group Track"));
    chkValidInSeq->addListener (this);

    chkValidInSeq->setBounds (272, 328, 200, 24);

    chkValidInChn.reset (new juce::ToggleButton ("chkValidInChn"));
    addAndMakeVisible (chkValidInChn.get());
    chkValidInChn->setButtonText (TRANS("Chn Header / Sub Track"));
    chkValidInChn->addListener (this);

    chkValidInChn->setBounds (272, 352, 200, 24);

    chkValidInTrk.reset (new juce::ToggleButton ("chkValidInTrk"));
    addAndMakeVisible (chkValidInTrk.get());
    chkValidInTrk->setButtonText (TRANS("Track Data / Note Track"));
    chkValidInTrk->addListener (this);

    chkValidInTrk->setBounds (272, 376, 200, 24);

    lblAction.reset (new juce::Label ("lblAction",
                                      TRANS("Action:")));
    addAndMakeVisible (lblAction.get());
    lblAction->setFont (juce::Font (15.00f, juce::Font::plain));
    lblAction->setJustificationType (juce::Justification::centredLeft);
    lblAction->setEditable (false, false, false);
    lblAction->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblAction->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblAction->setBounds (168, 416, 64, 24);

    txtComments.reset (new juce::TextEditor ("txtComments"));
    addAndMakeVisible (txtComments.get());
    txtComments->setMultiLine (true);
    txtComments->setReturnKeyStartsNewLine (true);
    txtComments->setReadOnly (false);
    txtComments->setScrollbarsShown (true);
    txtComments->setCaretVisible (true);
    txtComments->setPopupMenuEnabled (true);
    txtComments->setText (juce::String());

    txtComments->setBounds (96, 448, 374, 56);

    lblComments.reset (new juce::Label ("lblComments",
                                        TRANS("Comments:")));
    addAndMakeVisible (lblComments.get());
    lblComments->setFont (juce::Font (15.00f, juce::Font::plain));
    lblComments->setJustificationType (juce::Justification::centredLeft);
    lblComments->setEditable (false, false, false);
    lblComments->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblComments->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblComments->setBounds (0, 448, 96, 24);

    lblParams.reset (new juce::Label ("lblParams",
                                      TRANS("Params:")));
    addAndMakeVisible (lblParams.get());
    lblParams->setFont (juce::Font (15.00f, juce::Font::plain));
    lblParams->setJustificationType (juce::Justification::centredLeft);
    lblParams->setEditable (false, false, false);
    lblParams->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblParams->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblParams->setBounds (0, 488, 80, 24);

    grpParam.reset (new juce::GroupComponent ("grpParam",
                                              TRANS("Edit Parameter")));
    addAndMakeVisible (grpParam.get());

    grpParam->setBounds (152, 512, 328, 120);

    lblParamName.reset (new juce::Label ("lblParamName",
                                         TRANS("Name:")));
    addAndMakeVisible (lblParamName.get());
    lblParamName->setFont (juce::Font (15.00f, juce::Font::plain));
    lblParamName->setJustificationType (juce::Justification::centredLeft);
    lblParamName->setEditable (false, false, false);
    lblParamName->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblParamName->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblParamName->setBounds (160, 528, 64, 24);

    lblParamMeaning.reset (new juce::Label ("lblParamMeaning",
                                            TRANS("Meaning:")));
    addAndMakeVisible (lblParamMeaning.get());
    lblParamMeaning->setFont (juce::Font (15.00f, juce::Font::plain));
    lblParamMeaning->setJustificationType (juce::Justification::centredLeft);
    lblParamMeaning->setEditable (false, false, false);
    lblParamMeaning->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblParamMeaning->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblParamMeaning->setBounds (160, 552, 72, 24);

    txtParamName.reset (new juce::TextEditor ("txtParamName"));
    addAndMakeVisible (txtParamName.get());
    txtParamName->setMultiLine (false);
    txtParamName->setReturnKeyStartsNewLine (false);
    txtParamName->setReadOnly (false);
    txtParamName->setScrollbarsShown (true);
    txtParamName->setCaretVisible (true);
    txtParamName->setPopupMenuEnabled (true);
    txtParamName->setText (juce::String());

    txtParamName->setBounds (232, 528, 240, 24);

    cbxMeaning.reset (new juce::ComboBox ("cbxMeaning"));
    addAndMakeVisible (cbxMeaning.get());
    cbxMeaning->setEditableText (false);
    cbxMeaning->setJustificationType (juce::Justification::centredLeft);
    cbxMeaning->setTextWhenNothingSelected (juce::String());
    cbxMeaning->setTextWhenNoChoicesAvailable (TRANS("(no choices)"));
    cbxMeaning->addListener (this);

    cbxMeaning->setBounds (232, 552, 136, 24);

    optDataSrcOffset.reset (new juce::ToggleButton ("optDataSrcOffset"));
    addAndMakeVisible (optDataSrcOffset.get());
    optDataSrcOffset->setButtonText (TRANS("Cmd Offset"));
    optDataSrcOffset->setRadioGroupId (1);
    optDataSrcOffset->addListener (this);

    optDataSrcOffset->setBounds (160, 576, 112, 24);

    optDataSrcConstant.reset (new juce::ToggleButton ("optDataSrcConstant"));
    addAndMakeVisible (optDataSrcConstant.get());
    optDataSrcConstant->setButtonText (TRANS("Constant"));
    optDataSrcConstant->setRadioGroupId (1);
    optDataSrcConstant->addListener (this);

    optDataSrcConstant->setBounds (160, 600, 112, 24);

    optDataSrcFixed.reset (new juce::ToggleButton ("optDataSrcFixed"));
    addAndMakeVisible (optDataSrcFixed.get());
    optDataSrcFixed->setButtonText (TRANS("Fixed"));
    optDataSrcFixed->setRadioGroupId (1);
    optDataSrcFixed->addListener (this);

    optDataSrcFixed->setBounds (272, 576, 72, 24);

    optDataSrcVariable.reset (new juce::ToggleButton ("optDataSrcVariable"));
    addAndMakeVisible (optDataSrcVariable.get());
    optDataSrcVariable->setButtonText (TRANS("Variable"));
    optDataSrcVariable->setRadioGroupId (1);
    optDataSrcVariable->addListener (this);

    optDataSrcVariable->setBounds (272, 600, 88, 24);

    btnParamAdd.reset (new juce::TextButton ("btnParamAdd"));
    addAndMakeVisible (btnParamAdd.get());
    btnParamAdd->setButtonText (TRANS("Add"));
    btnParamAdd->setConnectedEdges (juce::Button::ConnectedOnLeft | juce::Button::ConnectedOnBottom);
    btnParamAdd->addListener (this);

    btnParamAdd->setBounds (96, 512, 48, 24);

    btnParamDelete.reset (new juce::TextButton ("btnParamDelete"));
    addAndMakeVisible (btnParamDelete.get());
    btnParamDelete->setButtonText (TRANS("Del"));
    btnParamDelete->setConnectedEdges (juce::Button::ConnectedOnLeft | juce::Button::ConnectedOnTop);
    btnParamDelete->addListener (this);

    btnParamDelete->setBounds (96, 536, 48, 24);

    btnParamUp.reset (new juce::TextButton ("btnParamUp"));
    addAndMakeVisible (btnParamUp.get());
    btnParamUp->setButtonText (TRANS("Up"));
    btnParamUp->setConnectedEdges (juce::Button::ConnectedOnLeft | juce::Button::ConnectedOnBottom);
    btnParamUp->addListener (this);

    btnParamUp->setBounds (96, 584, 48, 24);

    btnParamDown.reset (new juce::TextButton ("btnParamDown"));
    addAndMakeVisible (btnParamDown.get());
    btnParamDown->setButtonText (TRANS("Dn"));
    btnParamDown->setConnectedEdges (juce::Button::ConnectedOnLeft | juce::Button::ConnectedOnTop);
    btnParamDown->addListener (this);

    btnParamDown->setBounds (96, 608, 48, 24);

    lblDataLen.reset (new juce::Label ("lblDataLen",
                                       TRANS("(none)")));
    addAndMakeVisible (lblDataLen.get());
    lblDataLen->setFont (juce::Font (15.00f, juce::Font::plain));
    lblDataLen->setJustificationType (juce::Justification::centredLeft);
    lblDataLen->setEditable (false, false, false);
    lblDataLen->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblDataLen->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblDataLen->setBounds (360, 588, 64, 24);

    txtDataLen.reset (new juce::TextEditor ("txtDataLen"));
    addAndMakeVisible (txtDataLen.get());
    txtDataLen->setMultiLine (false);
    txtDataLen->setReturnKeyStartsNewLine (false);
    txtDataLen->setReadOnly (false);
    txtDataLen->setScrollbarsShown (true);
    txtDataLen->setCaretVisible (true);
    txtDataLen->setPopupMenuEnabled (true);
    txtDataLen->setText (juce::String());

    txtDataLen->setBounds (424, 588, 32, 24);

    btnSave.reset (new juce::TextButton ("btnSave"));
    addAndMakeVisible (btnSave.get());
    btnSave->setButtonText (TRANS("Save"));
    btnSave->addListener (this);

    btnSave->setBounds (408, 0, 64, 32);

    txtCC.reset (new juce::TextEditor ("txtCC"));
    addAndMakeVisible (txtCC.get());
    txtCC->setMultiLine (false);
    txtCC->setReturnKeyStartsNewLine (false);
    txtCC->setReadOnly (false);
    txtCC->setScrollbarsShown (true);
    txtCC->setCaretVisible (true);
    txtCC->setPopupMenuEnabled (true);
    txtCC->setText (juce::String());

    txtCC->setBounds (408, 552, 40, 24);

    lblCC.reset (new juce::Label ("lblCC",
                                  TRANS("CC:")));
    addAndMakeVisible (lblCC.get());
    lblCC->setFont (juce::Font (15.00f, juce::Font::plain));
    lblCC->setJustificationType (juce::Justification::centredLeft);
    lblCC->setEditable (false, false, false);
    lblCC->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblCC->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblCC->setBounds (368, 552, 40, 24);

    btnCCHelp.reset (new juce::TextButton ("btnCCHelp"));
    addAndMakeVisible (btnCCHelp.get());
    btnCCHelp->setButtonText (TRANS("?"));
    btnCCHelp->setConnectedEdges (juce::Button::ConnectedOnLeft);
    btnCCHelp->addListener (this);

    btnCCHelp->setBounds (448, 552, 22, 24);


    //[UserPreSize]

    lstCmds.reset(new TextListBox(this));
    addAndMakeVisible(lstCmds.get());
    lstCmds->setBounds(8, 40, 416, 264);
    lstCmds->setFont(Font(Font::getDefaultMonospacedFontName(), 15.00f, Font::plain).withTypefaceStyle("Regular"));
    lstCmds->setSelectAddedItems(false);

    lstParams.reset(new TextListBox(this));
    addAndMakeVisible(lstParams.get());
    lstParams->setBounds(8, 512, 88, 120);
    lstParams->setSelectAddedItems(false);

    txtCmdNameCmm->addListener(this);
    txtCmdNameCanon->addListener(this);
    txtCmdNameOld->addListener(this);
    txtCmd->addListener(this);
    txtCmdEnd->addListener(this);
    txtComments->addListener(this);
    txtParamName->addListener(this);
    txtDataLen->addListener(this);
    txtCC->addListener(this);

    //[/UserPreSize]

    setSize (480, 640);


    //[Constructor] You can add your own custom stuff here..

    abi = SeqFile::loadABI(abiname);
    if(!abi.isValid()){
        lblTitle->setText("Error: Could not load ABI file " + abiname + "!", dontSendNotification);
        setEnabled(false);
        return;
    }

    lblTitle->setText("Audioseq / Nintendo 64 Music Macro Language\nABI definition file: " + abiname, dontSendNotification);

    for(int i=0; i<abi.getNumChildren(); ++i){
        lstCmds->add(getCmdDescription(abi.getChild(i)));
    }

    //Make window
    setVisible(true);
    setOpaque(true);
    addToDesktop(ComponentPeer::windowHasTitleBar
        | ComponentPeer::windowHasCloseButton
        | ComponentPeer::windowHasDropShadow);
    ComponentPeer *peer = getPeer();
    peer->setTitle("seq64 - sequence ABI editor");
    peer->setVisible(true);
    peer->toFront(true);
    TopLevelWindow *tlw = TopLevelWindow::getActiveTopLevelWindow();
    if(tlw != nullptr){
        setCentrePosition(tlw->getPosition() +
            Point<int>(tlw->getWidth()/2, tlw->getHeight()/2));
    }

    needssaving = false;

    //[/Constructor]
}

SeqABIEditor::~SeqABIEditor()
{
    //[Destructor_pre]. You can add your own custom destruction code here..
    //[/Destructor_pre]

    lblTitle = nullptr;
    btnCmdAdd = nullptr;
    btnDelete = nullptr;
    btnCmdUp = nullptr;
    btnCmdDown = nullptr;
    grpNames = nullptr;
    lblCmdNameCmm = nullptr;
    grpValidIn = nullptr;
    lblCmdNameCanon = nullptr;
    lblCmdNameOld = nullptr;
    txtCmdNameCmm = nullptr;
    txtCmdNameCanon = nullptr;
    txtCmdNameOld = nullptr;
    lblCmd = nullptr;
    txtCmd = nullptr;
    lblTo = nullptr;
    txtCmdEnd = nullptr;
    cbxAction = nullptr;
    chkValidInSeq = nullptr;
    chkValidInChn = nullptr;
    chkValidInTrk = nullptr;
    lblAction = nullptr;
    txtComments = nullptr;
    lblComments = nullptr;
    lblParams = nullptr;
    grpParam = nullptr;
    lblParamName = nullptr;
    lblParamMeaning = nullptr;
    txtParamName = nullptr;
    cbxMeaning = nullptr;
    optDataSrcOffset = nullptr;
    optDataSrcConstant = nullptr;
    optDataSrcFixed = nullptr;
    optDataSrcVariable = nullptr;
    btnParamAdd = nullptr;
    btnParamDelete = nullptr;
    btnParamUp = nullptr;
    btnParamDown = nullptr;
    lblDataLen = nullptr;
    txtDataLen = nullptr;
    btnSave = nullptr;
    txtCC = nullptr;
    lblCC = nullptr;
    btnCCHelp = nullptr;


    //[Destructor]. You can add your own custom destruction code here..
    //[/Destructor]
}

//==============================================================================
void SeqABIEditor::paint (juce::Graphics& g)
{
    //[UserPrePaint] Add your own custom painting code here..
    //[/UserPrePaint]

    g.fillAll (juce::Colour (0xff323e44));

    {
        int x = 8, y = 40, width = 416, height = 264;
        juce::Colour fillColour = juce::Colour (0xff45a52a);
        //[UserPaintCustomArguments] Customize the painting arguments here..
        //[/UserPaintCustomArguments]
        g.setColour (fillColour);
        g.fillRect (x, y, width, height);
    }

    {
        int x = 8, y = 512, width = 88, height = 120;
        juce::Colour fillColour = juce::Colour (0xff2a61a5);
        //[UserPaintCustomArguments] Customize the painting arguments here..
        //[/UserPaintCustomArguments]
        g.setColour (fillColour);
        g.fillRect (x, y, width, height);
    }

    //[UserPaint] Add your own custom painting code here..
    //[/UserPaint]
}

void SeqABIEditor::resized()
{
    //[UserPreResize] Add your own custom resize code here..
    //[/UserPreResize]

    //[UserResized] Add your own custom resize handling here..
    //[/UserResized]
}

void SeqABIEditor::buttonClicked (juce::Button* buttonThatWasClicked)
{
    //[UserbuttonClicked_Pre]
    //[/UserbuttonClicked_Pre]

    if (buttonThatWasClicked == btnCmdAdd.get())
    {
        //[UserButtonCode_btnCmdAdd] -- add your button handler code here..
        selcmd = ValueTree("command");
        selcmd.setProperty("cmd", 0, nullptr);
        selcmd.setProperty("name", "Unnamed", nullptr);
        selcmd.setProperty("action", "No Action", nullptr);
        int r = lstCmds->getLastRowSelected();
        abi.addChild(selcmd, r, nullptr);
        lstCmds->insert(r, getCmdDescription(selcmd));
        lstCmds->selectRow(r >= 0 ? r : abi.getNumChildren()-1);
        needssaving = true;
        //[/UserButtonCode_btnCmdAdd]
    }
    else if (buttonThatWasClicked == btnDelete.get())
    {
        //[UserButtonCode_btnDelete] -- add your button handler code here..
        if(!selcmd.isValid()) return;
        abi.removeChild(selcmd, nullptr);
        selcmd = ValueTree();
        lstCmds->remove(lstCmds->getLastRowSelected());
        fillCmdInfo();
        needssaving = true;
        //[/UserButtonCode_btnDelete]
    }
    else if (buttonThatWasClicked == btnCmdUp.get())
    {
        //[UserButtonCode_btnCmdUp] -- add your button handler code here..
        int pos = lstCmds->getLastRowSelected();
        if(pos <= 0) return;
        abi.moveChild(pos, pos-1, nullptr);
        String temp = lstCmds->get(pos);
        lstCmds->remove(pos);
        lstCmds->insert(pos-1, temp);
        lstCmds->selectRow(pos-1);
        needssaving = true;
        //[/UserButtonCode_btnCmdUp]
    }
    else if (buttonThatWasClicked == btnCmdDown.get())
    {
        //[UserButtonCode_btnCmdDown] -- add your button handler code here..
        int pos = lstCmds->getLastRowSelected();
        if(pos < 0 || pos >= abi.getNumChildren()-1) return;
        abi.moveChild(pos, pos+1, nullptr);
        String temp = lstCmds->get(pos);
        lstCmds->remove(pos);
        lstCmds->insert(pos+1, temp);
        lstCmds->selectRow(pos+1);
        needssaving = true;
        //[/UserButtonCode_btnCmdDown]
    }
    else if (buttonThatWasClicked == chkValidInSeq.get())
    {
        //[UserButtonCode_chkValidInSeq] -- add your button handler code here..
        if(!selcmd.isValid()) return;
        if(buttonThatWasClicked->getToggleState()){
            selcmd.setProperty("validinseq", 1, nullptr);
        }else{
            selcmd.removeProperty("validinseq", nullptr);
        }
        lstCmds->set(lstCmds->getLastRowSelected(), getCmdDescription(selcmd));
        needssaving = true;
        //[/UserButtonCode_chkValidInSeq]
    }
    else if (buttonThatWasClicked == chkValidInChn.get())
    {
        //[UserButtonCode_chkValidInChn] -- add your button handler code here..
        if(!selcmd.isValid()) return;
        if(buttonThatWasClicked->getToggleState()){
            selcmd.setProperty("validinchn", 1, nullptr);
        }else{
            selcmd.removeProperty("validinchn", nullptr);
        }
        lstCmds->set(lstCmds->getLastRowSelected(), getCmdDescription(selcmd));
        needssaving = true;
        //[/UserButtonCode_chkValidInChn]
    }
    else if (buttonThatWasClicked == chkValidInTrk.get())
    {
        //[UserButtonCode_chkValidInTrk] -- add your button handler code here..
        if(!selcmd.isValid()) return;
        if(buttonThatWasClicked->getToggleState()){
            selcmd.setProperty("validintrk", 1, nullptr);
        }else{
            selcmd.removeProperty("validintrk", nullptr);
        }
        lstCmds->set(lstCmds->getLastRowSelected(), getCmdDescription(selcmd));
        needssaving = true;
        //[/UserButtonCode_chkValidInTrk]
    }
    else if (buttonThatWasClicked == optDataSrcOffset.get())
    {
        //[UserButtonCode_optDataSrcOffset] -- add your button handler code here..
        if(!selparam.isValid()) return;
        selparam.setProperty("datasrc", "offset", nullptr);
        selparam.removeProperty("datalen", nullptr);
        lblDataLen->setText("(none)", dontSendNotification);
        txtDataLen->setText("", false);
        txtDataLen->setEnabled(false);
        needssaving = true;
        //[/UserButtonCode_optDataSrcOffset]
    }
    else if (buttonThatWasClicked == optDataSrcConstant.get())
    {
        //[UserButtonCode_optDataSrcConstant] -- add your button handler code here..
        if(!selparam.isValid()) return;
        selparam.setProperty("datasrc", "constant", nullptr);
        lblDataLen->setText("const", dontSendNotification);
        txtDataLen->setText(selparam.getProperty("datalen", 0), false);
        txtDataLen->setEnabled(true);
        needssaving = true;
        //[/UserButtonCode_optDataSrcConstant]
    }
    else if (buttonThatWasClicked == optDataSrcFixed.get())
    {
        //[UserButtonCode_optDataSrcFixed] -- add your button handler code here..
        if(!selparam.isValid()) return;
        selparam.setProperty("datasrc", "fixed", nullptr);
        if((int)selparam.getProperty("datalen", 0) < 1) selparam.setProperty("datalen", 1, nullptr);
        lblDataLen->setText("length", dontSendNotification);
        txtDataLen->setText(selparam.getProperty("datalen", 0), false);
        txtDataLen->setEnabled(true);
        needssaving = true;
        //[/UserButtonCode_optDataSrcFixed]
    }
    else if (buttonThatWasClicked == optDataSrcVariable.get())
    {
        //[UserButtonCode_optDataSrcVariable] -- add your button handler code here..
        if(!selparam.isValid()) return;
        selparam.setProperty("datasrc", "variable", nullptr);
        selparam.removeProperty("datalen", nullptr);
        lblDataLen->setText("1 or 2", dontSendNotification);
        txtDataLen->setText("", false);
        txtDataLen->setEnabled(false);
        needssaving = true;
        //[/UserButtonCode_optDataSrcVariable]
    }
    else if (buttonThatWasClicked == btnParamAdd.get())
    {
        //[UserButtonCode_btnParamAdd] -- add your button handler code here..
        if(!selcmd.isValid()) return;
        selparam = ValueTree("parameter");
        selparam.setProperty("name", "Unnamed", nullptr);
        selparam.setProperty("meaning", "None", nullptr);
        selparam.setProperty("datasrc", "fixed", nullptr);
        selparam.setProperty("datalen", 1, nullptr);
        int r = lstParams->getLastRowSelected();
        selcmd.addChild(selparam, r, nullptr);
        lstParams->insert(r, "Unnamed");
        lstParams->selectRow(r >= 0 ? r : selcmd.getNumChildren()-1);
        needssaving = true;
        //[/UserButtonCode_btnParamAdd]
    }
    else if (buttonThatWasClicked == btnParamDelete.get())
    {
        //[UserButtonCode_btnParamDelete] -- add your button handler code here..
        if(!selcmd.isValid() || !selparam.isValid()) return;
        selcmd.removeChild(selparam, nullptr);
        selparam = ValueTree();
        lstParams->remove(lstParams->getLastRowSelected());
        fillParamInfo();
        needssaving = true;
        //[/UserButtonCode_btnParamDelete]
    }
    else if (buttonThatWasClicked == btnParamUp.get())
    {
        //[UserButtonCode_btnParamUp] -- add your button handler code here..
        if(!selcmd.isValid()) return;
        int pos = lstParams->getLastRowSelected();
        if(pos <= 0) return;
        selcmd.moveChild(pos, pos-1, nullptr);
        String temp = lstParams->get(pos);
        lstParams->remove(pos);
        lstParams->insert(pos-1, temp);
        lstParams->selectRow(pos-1);
        needssaving = true;
        //[/UserButtonCode_btnParamUp]
    }
    else if (buttonThatWasClicked == btnParamDown.get())
    {
        //[UserButtonCode_btnParamDown] -- add your button handler code here..
        if(!selcmd.isValid()) return;
        int pos = lstParams->getLastRowSelected();
        if(pos < 0 || pos >= selcmd.getNumChildren()-1) return;
        selcmd.moveChild(pos, pos+1, nullptr);
        String temp = lstParams->get(pos);
        lstParams->remove(pos);
        lstParams->insert(pos+1, temp);
        lstParams->selectRow(pos+1);
        needssaving = true;
        //[/UserButtonCode_btnParamDown]
    }
    else if (buttonThatWasClicked == btnSave.get())
    {
        //[UserButtonCode_btnSave] -- add your button handler code here..
        save();
        //[/UserButtonCode_btnSave]
    }
    else if (buttonThatWasClicked == btnCCHelp.get())
    {
        //[UserButtonCode_btnCCHelp] -- add your button handler code here..
        NativeMessageBox::showMessageBoxAsync(AlertWindow::InfoIcon, "seq64",
            "CC help\n\nSpecial CC values are:\n"
            "0: Bank\n"
            "128: Pitch Bend\n"
            "129: Program Change (instrument)\n\n"
            "The following CC values are special in MIDI and may not be mapped to Audioseq commands:\n"
            "32: Bank LSB\n"
            "6, 38, 96-101: RPN/NRPN controls\n"
            "120-127: Channel mode messages");
        //[/UserButtonCode_btnCCHelp]
    }

    //[UserbuttonClicked_Post]
    //[/UserbuttonClicked_Post]
}

void SeqABIEditor::comboBoxChanged (juce::ComboBox* comboBoxThatHasChanged)
{
    //[UsercomboBoxChanged_Pre]
    //[/UsercomboBoxChanged_Pre]

    if (comboBoxThatHasChanged == cbxAction.get())
    {
        //[UserComboBoxCode_cbxAction] -- add your combo box handling code here..
        if(!selcmd.isValid()) return;
        String action = cbxAction->getText();
        if(selcmd.getProperty("action", "No Action").toString() != action){
            selcmd.setProperty("action", action, nullptr);
            needssaving = true;
        }
        lstParams->selectRow(-1);
        fillMeaningsBox(action);
        //[/UserComboBoxCode_cbxAction]
    }
    else if (comboBoxThatHasChanged == cbxMeaning.get())
    {
        //[UserComboBoxCode_cbxMeaning] -- add your combo box handling code here..
        if(!selparam.isValid()) return;
        String meaning = cbxMeaning->getText();
        if(selparam.getProperty("meaning", "None").toString() != meaning){
            selparam.setProperty("meaning", meaning, nullptr);
            if(meaning != "CC"){
                selparam.removeProperty("cc", nullptr);
            }else if(!selparam.hasProperty("cc")){
                selparam.setProperty("cc", 1, nullptr);
                txtCC->setText("1", false);
            }
            needssaving = true;
        }
        txtCC->setEnabled(meaning == "CC");
        lblCC->setEnabled(meaning == "CC");
        btnCCHelp->setEnabled(meaning == "CC");
        //[/UserComboBoxCode_cbxMeaning]
    }

    //[UsercomboBoxChanged_Post]
    //[/UsercomboBoxChanged_Post]
}



//[MiscUserCode] You can add your own definitions of your custom methods or any other code here...

void SeqABIEditor::rowSelected(TextListBox* parent, int row){
    if(parent == lstCmds.get()){
        if(row < 0 || row >= abi.getNumChildren()){
            selcmd = ValueTree();
            return;
        }
        selcmd = abi.getChild(row);
        fillCmdInfo();
    }else if(parent == lstParams.get()){
        if(!selcmd.isValid() || row < 0 || row >= selcmd.getNumChildren()){
            selparam = ValueTree();
            return;
        }
        selparam = selcmd.getChild(row);
        fillParamInfo();
    }
}
void SeqABIEditor::textEditorTextChanged(TextEditor& editorThatWasChanged){
    TEXTCHANGEDHANDLER_PRE;
    if(&editorThatWasChanged == txtCmdNameCmm.get()){
        if(!selcmd.isValid()) return;
        turnRed = text.isEmpty();
        selcmd.setProperty("name", text.isEmpty() ? "Unknown" : text, nullptr);
        lstCmds->set(lstCmds->getLastRowSelected(), getCmdDescription(selcmd));
    }else if(&editorThatWasChanged == txtCmdNameCanon.get()){
        if(!selcmd.isValid()) return;
        if(text.isEmpty()) selcmd.removeProperty("cname", nullptr);
        else selcmd.setProperty("cname", text, nullptr);
        lstCmds->set(lstCmds->getLastRowSelected(), getCmdDescription(selcmd));
    }else if(&editorThatWasChanged == txtCmdNameOld.get()){
        if(!selcmd.isValid()) return;
        if(text.isEmpty()) selcmd.removeProperty("oname", nullptr);
        else selcmd.setProperty("oname", text, nullptr);
        lstCmds->set(lstCmds->getLastRowSelected(), getCmdDescription(selcmd));
    }else if(&editorThatWasChanged == txtCmd.get()){
        if(!selcmd.isValid()) return;
        turnRed = !ishex || hexval < 0 || hexval > 0xFF;
        if(!turnRed){
            selcmd.setProperty("cmd", hexval, nullptr);
            if((int)selcmd.getProperty("cmdend", -1) < hexval){
                selcmd.removeProperty("cmdend", nullptr);
                txtCmdEnd->setText("", false);
            }
            lstCmds->set(lstCmds->getLastRowSelected(), getCmdDescription(selcmd));
        }
    }else if(&editorThatWasChanged == txtCmdEnd.get()){
        if(!selcmd.isValid()) return;
        if(text == ""){
            selcmd.removeProperty("cmdend", nullptr);
        }else{
            turnRed = !ishex || hexval < 0 || hexval > 0xFF || (int)selcmd.getProperty("cmd", 0) >= hexval;
            if(!turnRed) selcmd.setProperty("cmdend", hexval, nullptr);
        }
        lstCmds->set(lstCmds->getLastRowSelected(), getCmdDescription(selcmd));
    }else if(&editorThatWasChanged == txtComments.get()){
        if(!selcmd.isValid()) return;
        if(text.isEmpty()) selcmd.removeProperty("comments", nullptr);
        else selcmd.setProperty("comments", text, nullptr);
    }else if(&editorThatWasChanged == txtParamName.get()){
        if(!selparam.isValid()) return;
        turnRed = text.isEmpty();
        selparam.setProperty("name", text.isEmpty() ? "Unnamed" : text, nullptr);
        lstParams->set(lstParams->getLastRowSelected(), text);
    }else if(&editorThatWasChanged == txtDataLen.get()){
        if(!selparam.isValid()) return;
        String datasrc = selparam.getProperty("datasrc", "fixed").toString();
        if(datasrc == "offset" || datasrc == "variable"){
            return;
        }else if(datasrc == "constant"){
            turnRed = !isint;
        }else{
            turnRed = !isint || intval > 2 || intval <= 0;
        }
        selparam.setProperty("datalen", intval, nullptr);
    }else if(&editorThatWasChanged == txtCC.get()){
        if(!selparam.isValid()) return;
        if(selparam.getProperty("meaning").toString() != "CC") return;
        if(!isint || !SeqFile::isValidCC(intval)){
            turnRed = true;
        }else{
            selparam.setProperty("cc", intval, nullptr);
        }
    }
    needssaving = true;
    TEXTCHANGEDHANDLER_POST;
}

String SeqABIEditor::getCmdDescription(ValueTree cmd){
    String ret;
    ret += ((int)cmd.getProperty("validinseq", 0) == 1) ? "S" : "-";
    ret += ((int)cmd.getProperty("validinchn", 0) == 1) ? "C" : "-";
    ret += ((int)cmd.getProperty("validintrk", 0) == 1) ? "T" : "-";
    ret += " ";
    ret += cmd.hasProperty("cmd") ? hex((uint8_t)(int)cmd.getProperty("cmd")) : "ER";
    ret += cmd.hasProperty("cmdend") ? ":" + hex((uint8_t)(int)cmd.getProperty("cmdend")) : "   ";
    ret += ": " + cmd.getProperty("name").toString();
    if(cmd.hasProperty("cname")) ret += " / " + cmd.getProperty("cname").toString();
    if(cmd.hasProperty("oname")) ret += " / " + cmd.getProperty("oname").toString();
    return ret;
}

void SeqABIEditor::fillCmdInfo(){
    if(!selcmd.isValid()){
        txtCmdNameCmm->setText("", false);
        txtCmdNameCanon->setText("", false);
        txtCmdNameOld->setText("", false);
        chkValidInSeq->setToggleState(false, dontSendNotification);
        chkValidInChn->setToggleState(false, dontSendNotification);
        chkValidInTrk->setToggleState(false, dontSendNotification);
        txtCmd->setText("", false);
        txtCmdEnd->setText("", false);
        cbxAction->setText("");
        fillMeaningsBox("No Action");
        txtComments->setText("(No command selected)", false);
        lstParams->clear();
        return;
    }
    txtCmdNameCmm->setText(selcmd.getProperty("name", ""), false);
    txtCmdNameCanon->setText(selcmd.getProperty("cname", ""), false);
    txtCmdNameOld->setText(selcmd.getProperty("oname", ""), false);
    chkValidInSeq->setToggleState((int)selcmd.getProperty("validinseq", 0) == 1, dontSendNotification);
    chkValidInChn->setToggleState((int)selcmd.getProperty("validinchn", 0) == 1, dontSendNotification);
    chkValidInTrk->setToggleState((int)selcmd.getProperty("validintrk", 0) == 1, dontSendNotification);
    txtCmd->setText(hex((uint8_t)(int)selcmd.getProperty("cmd")), false);
    txtCmdEnd->setText(selcmd.hasProperty("cmdend") ? hex((uint8_t)(int)selcmd.getProperty("cmdend")) : "", false);
    String action = selcmd.getProperty("action", "No Action");
    cbxAction->setText(action);
    fillMeaningsBox(action);
    txtComments->setText(selcmd.getProperty("comments", ""), false);
    lstParams->clear();
    for(int i=0; i<selcmd.getNumChildren(); ++i){
        lstParams->add(selcmd.getChild(i).getProperty("name", "Unnamed"));
    }
    selparam = ValueTree();
    fillParamInfo();
}
void SeqABIEditor::fillParamInfo(){
    if(!selparam.isValid()){
        txtParamName->setText("", false);
        cbxMeaning->setText("");
        optDataSrcOffset->setToggleState(false, dontSendNotification);
        optDataSrcConstant->setToggleState(false, dontSendNotification);
        optDataSrcFixed->setToggleState(false, dontSendNotification);
        optDataSrcVariable->setToggleState(false, dontSendNotification);
        lblDataLen->setText("(none)", dontSendNotification);
        txtDataLen->setText("", false);
        txtCC->setText("", false);
        return;
    }
    txtParamName->setText(selparam.getProperty("name", ""), false);
    String meaning = selparam.getProperty("meaning", "");
    cbxMeaning->setText(meaning);
    txtCC->setEnabled(meaning == "CC");
    lblCC->setEnabled(meaning == "CC");
    btnCCHelp->setEnabled(meaning == "CC");
    txtCC->setText(selparam.getProperty("cc", ""));
    String datasrc = selparam.getProperty("datasrc");
    optDataSrcOffset  ->setToggleState(datasrc == "offset",   dontSendNotification);
    optDataSrcConstant->setToggleState(datasrc == "constant", dontSendNotification);
    optDataSrcFixed   ->setToggleState(datasrc == "fixed",    dontSendNotification);
    optDataSrcVariable->setToggleState(datasrc == "variable", dontSendNotification);
    lblDataLen->setText(datasrc == "offset" ? "(none)" : datasrc == "constant" ? "const" :
        datasrc == "fixed" ? "length" : "1 or 2", dontSendNotification);
    txtDataLen->setText(datasrc == "offset" || datasrc == "variable" ? ""
        : selparam.getProperty("datalen", "").toString(), false);
    txtDataLen->setEnabled(datasrc == "fixed" || datasrc == "constant");
}

void SeqABIEditor::fillMeaningsBox(String action){
    cbxMeaning->clear(dontSendNotification);
    cbxMeaning->addItem("None", cbxMeaning->getNumItems()+1);
    cbxMeaning->addItem("Delay", cbxMeaning->getNumItems()+1);
    bool add_addrs = false;
    if(action == "No Action" || action == "End of Data" || action == "Delay"
            || action == "Loop Break" || action == "Loop End"
            || action == "Enable Long Notes" || action == "Dyntable from Dyntable"
            || action == "Data from Dyntable" || action == "Dyntable from Data"){
        (void)0; //None
    }else if(action == "Mute Behavior" || action == "Mute Scale"
            || action == "Master Volume" || action == "Tempo"
            || action == "Chn Transpose" || action == "Layer Transpose"){
        cbxMeaning->addItem("Value", cbxMeaning->getNumItems()+1);
    }else if(action == "Jump" || action == "Branch" || action == "Call"
            || action == "Ptr Seq Header"
            || action == "Seq Hdr Call Table" || action == "Set Dyntable"
            || action == "Ptr Envelope" || action == "Ptr Message"){
        add_addrs = true;
    }else if(action == "Ptr Channel Header" || action == "Channel from Dyntable"){
        cbxMeaning->addItem("Channel", cbxMeaning->getNumItems()+1);
        add_addrs = true;
    }else if(action == "Ptr Note Layer" || action == "Layer from Dyntable"){
        cbxMeaning->addItem("Note Layer", cbxMeaning->getNumItems()+1);
        add_addrs = true;
    }else if(action == "Ptr Other Table" || action == "Ptr Self"
            || action == "Maybe Ptr"){
        cbxMeaning->addItem("Size", cbxMeaning->getNumItems()+1);
        add_addrs = true;
    }else if(action == "Loop Start"){
        cbxMeaning->addItem("Loop Count", cbxMeaning->getNumItems()+1);
    }else if(action == "Channel Enable" || action == "Channel Disable"){
        cbxMeaning->addItem("Bitfield", cbxMeaning->getNumItems()+1);
    }else if(action == "CC or CC Group"){
        cbxMeaning->addItem("CC", cbxMeaning->getNumItems()+1);
    }else if(action == "Note"){
        cbxMeaning->addItem("Note Layer", cbxMeaning->getNumItems()+1);
        cbxMeaning->addItem("Note", cbxMeaning->getNumItems()+1);
        cbxMeaning->addItem("Velocity", cbxMeaning->getNumItems()+1);
        cbxMeaning->addItem("Gate Time", cbxMeaning->getNumItems()+1);
    }else{
        cbxMeaning->clear(dontSendNotification);
        cbxMeaning->addItem("ERROR fillMeaningsBox", cbxMeaning->getNumItems()+1);
    }
    if(add_addrs){
        cbxMeaning->addItem("Absolute Address", cbxMeaning->getNumItems()+1);
        cbxMeaning->addItem("Relative Address", cbxMeaning->getNumItems()+1);
    }
    cbxMeaning->setText("");
}


void SeqABIEditor::save(){
    if(!abi.isValid()) return;
    if(!SeqFile::saveABI(abiname, abi)){
        NativeMessageBox::showMessageBoxAsync(AlertWindow::WarningIcon, "seq64",
            "Saving ABI to " + abiname + " failed!");
        return;
    }
    std::cout << "ABI saved to " << abiname << "\n";
    needssaving = false;
}
void SeqABIEditor::userTriedToCloseWindow(){
    if(abi.isValid() && needssaving){
        int res = NativeMessageBox::showYesNoCancelBox(AlertWindow::WarningIcon, "seq64",
                "Save ABI before closing window?");
        if(res == 0) return;
        if(res == 1) save();
    }
    getPeer()->setVisible(false);
}

//[/MiscUserCode]


//==============================================================================
#if 0
/*  -- Projucer information section --

    This is where the Projucer stores the metadata that describe this GUI layout, so
    make changes in here at your peril!

BEGIN_JUCER_METADATA

<JUCER_COMPONENT documentType="Component" className="SeqABIEditor" componentName=""
                 parentClasses="public Component, private TextListBox::Listener, private TextEditor::Listener"
                 constructorParams="String abi_name" variableInitialisers="abiname(abi_name)"
                 snapPixels="8" snapActive="1" snapShown="1" overlayOpacity="0.330"
                 fixedSize="1" initialWidth="480" initialHeight="640">
  <BACKGROUND backgroundColour="ff323e44">
    <RECT pos="8 40 416 264" fill="solid: ff45a52a" hasStroke="0"/>
    <RECT pos="8 512 88 120" fill="solid: ff2a61a5" hasStroke="0"/>
  </BACKGROUND>
  <LABEL name="lblTitle" id="b72f38d93b9f9d59" memberName="lblTitle" virtualName=""
         explicitFocusOrder="0" pos="0 0 408 32" edTextCol="ff000000"
         edBkgCol="0" labelText="Audioseq / Nintendo 64 Music Macro Language&#10;ABI definition file: /foo/bar.xml"
         editableSingleClick="0" editableDoubleClick="0" focusDiscardsChanges="0"
         fontname="Default font" fontsize="15.0" kerning="0.0" bold="0"
         italic="0" justification="33"/>
  <TEXTBUTTON name="btnCmdAdd" id="1c1d7a84d931a266" memberName="btnCmdAdd"
              virtualName="" explicitFocusOrder="0" pos="424 40 48 24" buttonText="Add"
              connectedEdges="9" needsCallback="1" radioGroupId="0"/>
  <TEXTBUTTON name="btnDelete" id="9b893c400a55697f" memberName="btnDelete"
              virtualName="" explicitFocusOrder="0" pos="424 64 48 24" buttonText="Del"
              connectedEdges="5" needsCallback="1" radioGroupId="0"/>
  <TEXTBUTTON name="btnCmdUp" id="c93f1fe0ffca9711" memberName="btnCmdUp" virtualName=""
              explicitFocusOrder="0" pos="424 256 48 24" buttonText="Up" connectedEdges="9"
              needsCallback="1" radioGroupId="0"/>
  <TEXTBUTTON name="btnCmdDown" id="9486dfbb50c0d992" memberName="btnCmdDown"
              virtualName="" explicitFocusOrder="0" pos="424 280 48 24" buttonText="Dn"
              connectedEdges="5" needsCallback="1" radioGroupId="0"/>
  <GROUPCOMPONENT name="grpNames" id="e0ab156d8cca64c" memberName="grpNames" virtualName=""
                  explicitFocusOrder="0" pos="0 312 264 96" title="Command Names"/>
  <LABEL name="lblCmdNameCmm" id="542ea00df99339a1" memberName="lblCmdNameCmm"
         virtualName="" explicitFocusOrder="0" pos="8 328 96 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Community:" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <GROUPCOMPONENT name="new group" id="d525d9f7cbc2f6ad" memberName="grpValidIn"
                  virtualName="" explicitFocusOrder="0" pos="264 312 216 96" title="Valid in"/>
  <LABEL name="lblCmdNameCanon" id="100ba3b8c10ae42f" memberName="lblCmdNameCanon"
         virtualName="" explicitFocusOrder="0" pos="8 352 96 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Canon:" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <LABEL name="lblCmdNameOld" id="8932fed8d897733c" memberName="lblCmdNameOld"
         virtualName="" explicitFocusOrder="0" pos="8 376 96 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Canon (Old):" editableSingleClick="0"
         editableDoubleClick="0" focusDiscardsChanges="0" fontname="Default font"
         fontsize="15.0" kerning="0.0" bold="0" italic="0" justification="33"/>
  <TEXTEDITOR name="txtCmdNameCmm" id="ecd2cd03caa24b3d" memberName="txtCmdNameCmm"
              virtualName="" explicitFocusOrder="0" pos="104 328 152 24" initialText=""
              multiline="0" retKeyStartsLine="0" readonly="0" scrollbars="1"
              caret="1" popupmenu="1"/>
  <TEXTEDITOR name="txtCmdNameCanon" id="65f7bd8a8ebfb6c" memberName="txtCmdNameCanon"
              virtualName="" explicitFocusOrder="0" pos="104 352 152 24" initialText=""
              multiline="0" retKeyStartsLine="0" readonly="0" scrollbars="1"
              caret="1" popupmenu="1"/>
  <TEXTEDITOR name="txtCmdNameOld" id="350e05195a6ca092" memberName="txtCmdNameOld"
              virtualName="" explicitFocusOrder="0" pos="104 376 152 24" initialText=""
              multiline="0" retKeyStartsLine="0" readonly="0" scrollbars="1"
              caret="1" popupmenu="1"/>
  <LABEL name="lblCmd" id="38c6763ff071f3d2" memberName="lblCmd" virtualName=""
         explicitFocusOrder="0" pos="0 416 48 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Cmd:" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <TEXTEDITOR name="txtCmd" id="d63db6b9200c0e82" memberName="txtCmd" virtualName=""
              explicitFocusOrder="0" pos="48 416 40 24" initialText="" multiline="0"
              retKeyStartsLine="0" readonly="0" scrollbars="1" caret="1" popupmenu="1"/>
  <LABEL name="lblTo" id="23f64e1453b26553" memberName="lblTo" virtualName=""
         explicitFocusOrder="0" pos="88 416 24 24" edTextCol="ff000000"
         edBkgCol="0" labelText="to" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <TEXTEDITOR name="txtCmdEnd" id="fcae093a9de9613" memberName="txtCmdEnd"
              virtualName="" explicitFocusOrder="0" pos="112 416 40 24" initialText=""
              multiline="0" retKeyStartsLine="0" readonly="0" scrollbars="1"
              caret="1" popupmenu="1"/>
  <COMBOBOX name="cbxAction" id="e2a97de7a0a41ac7" memberName="cbxAction"
            virtualName="" explicitFocusOrder="0" pos="232 416 240 24" editable="0"
            layout="33" items="No Action&#10;End of Data&#10;Delay&#10;Jump&#10;Branch&#10;Call&#10;Loop Start&#10;Loop Break&#10;Loop End&#10;Ptr Seq Header&#10;Ptr Channel Header&#10;Ptr Note Layer&#10;Seq Hdr Call Table&#10;Set Dyntable&#10;Channel from Dyntable&#10;Layer from Dyntable&#10;Dyntable from Dyntable&#10;Data from Dyntable&#10;Dyntable from Data&#10;Ptr Envelope&#10;Ptr Message&#10;Ptr Other Table&#10;Ptr Self&#10;Maybe Ptr&#10;Mute Behavior&#10;Mute Scale&#10;Channel Enable&#10;Channel Disable&#10;Master Volume&#10;Tempo&#10;Enable Long Notes&#10;CC or CC Group&#10;Chn Transpose&#10;Layer Transpose&#10;Note"
            textWhenNonSelected="" textWhenNoItems="(no choices)"/>
  <TOGGLEBUTTON name="chkValidInSeq" id="e629b15d1c633dc3" memberName="chkValidInSeq"
                virtualName="" explicitFocusOrder="0" pos="272 328 200 24" buttonText="Seq Header / Group Track"
                connectedEdges="0" needsCallback="1" radioGroupId="0" state="0"/>
  <TOGGLEBUTTON name="chkValidInChn" id="c6beef12f8a8cef2" memberName="chkValidInChn"
                virtualName="" explicitFocusOrder="0" pos="272 352 200 24" buttonText="Chn Header / Sub Track"
                connectedEdges="0" needsCallback="1" radioGroupId="0" state="0"/>
  <TOGGLEBUTTON name="chkValidInTrk" id="adca82fa7e81bdc8" memberName="chkValidInTrk"
                virtualName="" explicitFocusOrder="0" pos="272 376 200 24" buttonText="Track Data / Note Track"
                connectedEdges="0" needsCallback="1" radioGroupId="0" state="0"/>
  <LABEL name="lblAction" id="75977ab1d435c897" memberName="lblAction"
         virtualName="" explicitFocusOrder="0" pos="168 416 64 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Action:" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <TEXTEDITOR name="txtComments" id="37826a24f9b25e6" memberName="txtComments"
              virtualName="" explicitFocusOrder="0" pos="96 448 374 56" initialText=""
              multiline="1" retKeyStartsLine="1" readonly="0" scrollbars="1"
              caret="1" popupmenu="1"/>
  <LABEL name="lblComments" id="f7272c89b37991d4" memberName="lblComments"
         virtualName="" explicitFocusOrder="0" pos="0 448 96 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Comments:" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <LABEL name="lblParams" id="b1ab28d0880fdbc5" memberName="lblParams"
         virtualName="" explicitFocusOrder="0" pos="0 488 80 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Params:" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <GROUPCOMPONENT name="grpParam" id="637bfc2955a53533" memberName="grpParam" virtualName=""
                  explicitFocusOrder="0" pos="152 512 328 120" title="Edit Parameter"/>
  <LABEL name="lblParamName" id="54e465da2178cc75" memberName="lblParamName"
         virtualName="" explicitFocusOrder="0" pos="160 528 64 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Name:" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <LABEL name="lblParamMeaning" id="4c69f61d84ea75de" memberName="lblParamMeaning"
         virtualName="" explicitFocusOrder="0" pos="160 552 72 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Meaning:" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <TEXTEDITOR name="txtParamName" id="69d164d37c1fc4b1" memberName="txtParamName"
              virtualName="" explicitFocusOrder="0" pos="232 528 240 24" initialText=""
              multiline="0" retKeyStartsLine="0" readonly="0" scrollbars="1"
              caret="1" popupmenu="1"/>
  <COMBOBOX name="cbxMeaning" id="110d66f6a036f77f" memberName="cbxMeaning"
            virtualName="" explicitFocusOrder="0" pos="232 552 136 24" editable="0"
            layout="33" items="" textWhenNonSelected="" textWhenNoItems="(no choices)"/>
  <TOGGLEBUTTON name="optDataSrcOffset" id="8a30282f44025f98" memberName="optDataSrcOffset"
                virtualName="" explicitFocusOrder="0" pos="160 576 112 24" buttonText="Cmd Offset"
                connectedEdges="0" needsCallback="1" radioGroupId="1" state="0"/>
  <TOGGLEBUTTON name="optDataSrcConstant" id="36bcae071bb015ce" memberName="optDataSrcConstant"
                virtualName="" explicitFocusOrder="0" pos="160 600 112 24" buttonText="Constant"
                connectedEdges="0" needsCallback="1" radioGroupId="1" state="0"/>
  <TOGGLEBUTTON name="optDataSrcFixed" id="4e392b9e8a06d9fb" memberName="optDataSrcFixed"
                virtualName="" explicitFocusOrder="0" pos="272 576 72 24" buttonText="Fixed"
                connectedEdges="0" needsCallback="1" radioGroupId="1" state="0"/>
  <TOGGLEBUTTON name="optDataSrcVariable" id="42ca25208a198bdc" memberName="optDataSrcVariable"
                virtualName="" explicitFocusOrder="0" pos="272 600 88 24" buttonText="Variable"
                connectedEdges="0" needsCallback="1" radioGroupId="1" state="0"/>
  <TEXTBUTTON name="btnParamAdd" id="e312c3498c139489" memberName="btnParamAdd"
              virtualName="" explicitFocusOrder="0" pos="96 512 48 24" buttonText="Add"
              connectedEdges="9" needsCallback="1" radioGroupId="0"/>
  <TEXTBUTTON name="btnParamDelete" id="721bde56ba3afa97" memberName="btnParamDelete"
              virtualName="" explicitFocusOrder="0" pos="96 536 48 24" buttonText="Del"
              connectedEdges="5" needsCallback="1" radioGroupId="0"/>
  <TEXTBUTTON name="btnParamUp" id="df4481fd55603121" memberName="btnParamUp"
              virtualName="" explicitFocusOrder="0" pos="96 584 48 24" buttonText="Up"
              connectedEdges="9" needsCallback="1" radioGroupId="0"/>
  <TEXTBUTTON name="btnParamDown" id="3532da6e8caf739d" memberName="btnParamDown"
              virtualName="" explicitFocusOrder="0" pos="96 608 48 24" buttonText="Dn"
              connectedEdges="5" needsCallback="1" radioGroupId="0"/>
  <LABEL name="lblDataLen" id="1e1a075250c48074" memberName="lblDataLen"
         virtualName="" explicitFocusOrder="0" pos="360 588 64 24" edTextCol="ff000000"
         edBkgCol="0" labelText="(none)" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <TEXTEDITOR name="txtDataLen" id="7975a2934104f024" memberName="txtDataLen"
              virtualName="" explicitFocusOrder="0" pos="424 588 32 24" initialText=""
              multiline="0" retKeyStartsLine="0" readonly="0" scrollbars="1"
              caret="1" popupmenu="1"/>
  <TEXTBUTTON name="btnSave" id="f1826d8815459bef" memberName="btnSave" virtualName=""
              explicitFocusOrder="0" pos="408 0 64 32" buttonText="Save" connectedEdges="0"
              needsCallback="1" radioGroupId="0"/>
  <TEXTEDITOR name="txtCC" id="b8805eeeec5929ac" memberName="txtCC" virtualName=""
              explicitFocusOrder="0" pos="408 552 40 24" initialText="" multiline="0"
              retKeyStartsLine="0" readonly="0" scrollbars="1" caret="1" popupmenu="1"/>
  <LABEL name="lblCC" id="da5b4b4b524224c5" memberName="lblCC" virtualName=""
         explicitFocusOrder="0" pos="368 552 40 24" edTextCol="ff000000"
         edBkgCol="0" labelText="CC:" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <TEXTBUTTON name="btnCCHelp" id="d5818054c15cd3a3" memberName="btnCCHelp"
              virtualName="" explicitFocusOrder="0" pos="448 552 22 24" buttonText="?"
              connectedEdges="1" needsCallback="1" radioGroupId="0"/>
</JUCER_COMPONENT>

END_JUCER_METADATA
*/
#endif


//[EndFile] You can add extra defines here...
//[/EndFile]
