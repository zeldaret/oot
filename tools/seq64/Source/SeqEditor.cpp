/*
  ==============================================================================

  This is an automatically generated GUI class created by the Projucer!

  Be careful when adding custom code to these files, as only the code within
  the "//[xyz]" and "//[/xyz]" sections will be retained when the file is loaded
  and re-saved.

  Created with Projucer version: 6.0.7

  ------------------------------------------------------------------------------

  The Projucer is part of the JUCE library.
  Copyright (c) 2020 - Raw Material Software Limited.

  ==============================================================================
*/

//[Headers] You can add your own extra header files here...
/*
 * ============================================================================
 *
 * SeqEditor.cpp
 * GUI component to edit a Nintendo 64 Music Macro Language (Audioseq)
 * format sequence file
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
#include "SeqABIEditor.hpp"
//[/Headers]

#include "SeqEditor.hpp"


//[MiscUserDefs] You can add your own user definitions and misc code here...
//[/MiscUserDefs]

//==============================================================================
SeqEditor::SeqEditor ()
    : seq(nullptr), opthread(nullptr)
{
    //[Constructor_pre] You can add your own custom stuff here..
    //[/Constructor_pre]

    grpMusDialect.reset (new juce::GroupComponent (juce::String(),
                                                   TRANS(".mus dialect (for export)")));
    addAndMakeVisible (grpMusDialect.get());

    grpMusDialect->setBounds (8, 593, 320, 71);

    optMusCommunity.reset (new juce::ToggleButton ("new toggle button"));
    addAndMakeVisible (optMusCommunity.get());
    optMusCommunity->setButtonText (TRANS("Community"));
    optMusCommunity->setRadioGroupId (1);
    optMusCommunity->addListener (this);
    optMusCommunity->setToggleState (true, dontSendNotification);

    optMusCommunity->setBounds (16, 608, 112, 24);

    optMusCanon.reset (new juce::ToggleButton ("new toggle button"));
    addAndMakeVisible (optMusCanon.get());
    optMusCanon->setButtonText (TRANS("Canon"));
    optMusCanon->setRadioGroupId (1);
    optMusCanon->addListener (this);

    optMusCanon->setBounds (128, 608, 80, 24);

    optMusCanonOld.reset (new juce::ToggleButton ("new toggle button"));
    addAndMakeVisible (optMusCanonOld.get());
    optMusCanonOld->setButtonText (TRANS("Canon (Old)"));
    optMusCanonOld->setRadioGroupId (1);
    optMusCanonOld->addListener (this);

    optMusCanonOld->setBounds (208, 608, 112, 24);

    grpImportMIDI.reset (new juce::GroupComponent ("new group",
                                                   TRANS("MIDI Import")));
    addAndMakeVisible (grpImportMIDI.get());

    grpImportMIDI->setBounds (8, 96, 320, 216);

    chkSmartLoop.reset (new juce::ToggleButton ("new toggle button"));
    addAndMakeVisible (chkSmartLoop.get());
    chkSmartLoop->setButtonText (TRANS("Smart Loop"));
    chkSmartLoop->addListener (this);
    chkSmartLoop->setToggleState (true, dontSendNotification);

    chkSmartLoop->setBounds (16, 136, 112, 24);

    grpOptimizer.reset (new juce::GroupComponent ("new group",
                                                  TRANS("Optimizer")));
    addAndMakeVisible (grpOptimizer.get());

    grpOptimizer->setBounds (16, 184, 304, 120);

    chkUseCalls.reset (new juce::ToggleButton ("new toggle button"));
    addAndMakeVisible (chkUseCalls.get());
    chkUseCalls->setButtonText (TRANS("Calls"));
    chkUseCalls->addListener (this);
    chkUseCalls->setToggleState (true, dontSendNotification);

    chkUseCalls->setBounds (24, 200, 80, 24);

    txtMasterVol.reset (new juce::TextEditor ("new text editor"));
    addAndMakeVisible (txtMasterVol.get());
    txtMasterVol->setMultiLine (false);
    txtMasterVol->setReturnKeyStartsNewLine (false);
    txtMasterVol->setReadOnly (false);
    txtMasterVol->setScrollbarsShown (false);
    txtMasterVol->setCaretVisible (true);
    txtMasterVol->setPopupMenuEnabled (true);
    txtMasterVol->setText (TRANS("58"));

    txtMasterVol->setBounds (280, 160, 40, 24);

    lblMasterVol.reset (new juce::Label ("new label",
                                         TRANS("Default Mst.Vol.")));
    addAndMakeVisible (lblMasterVol.get());
    lblMasterVol->setFont (juce::Font (15.00f, juce::Font::plain));
    lblMasterVol->setJustificationType (juce::Justification::centredLeft);
    lblMasterVol->setEditable (false, false, false);
    lblMasterVol->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblMasterVol->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblMasterVol->setBounds (168, 160, 112, 24);

    chkUseLoops.reset (new juce::ToggleButton ("new toggle button"));
    addAndMakeVisible (chkUseLoops.get());
    chkUseLoops->setButtonText (TRANS("Loops"));
    chkUseLoops->addListener (this);
    chkUseLoops->setToggleState (true, dontSendNotification);

    chkUseLoops->setBounds (24, 264, 80, 24);

    txtMergeVel.reset (new juce::TextEditor ("new text editor"));
    addAndMakeVisible (txtMergeVel.get());
    txtMergeVel->setMultiLine (false);
    txtMergeVel->setReturnKeyStartsNewLine (false);
    txtMergeVel->setReadOnly (false);
    txtMergeVel->setScrollbarsShown (false);
    txtMergeVel->setCaretVisible (true);
    txtMergeVel->setPopupMenuEnabled (true);
    txtMergeVel->setText (TRANS("5"));

    txtMergeVel->setBounds (160, 224, 40, 24);

    lblMergeVel.reset (new juce::Label ("new label",
                                        TRANS("Vels")));
    addAndMakeVisible (lblMergeVel.get());
    lblMergeVel->setFont (juce::Font (15.00f, juce::Font::plain));
    lblMergeVel->setJustificationType (juce::Justification::centredLeft);
    lblMergeVel->setEditable (false, false, false);
    lblMergeVel->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblMergeVel->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblMergeVel->setBounds (104, 224, 55, 24);

    txtMergeGates.reset (new juce::TextEditor ("new text editor"));
    addAndMakeVisible (txtMergeGates.get());
    txtMergeGates->setMultiLine (false);
    txtMergeGates->setReturnKeyStartsNewLine (false);
    txtMergeGates->setReadOnly (false);
    txtMergeGates->setScrollbarsShown (false);
    txtMergeGates->setCaretVisible (true);
    txtMergeGates->setPopupMenuEnabled (true);
    txtMergeGates->setText (TRANS("3"));

    txtMergeGates->setBounds (160, 248, 40, 24);

    lblMergeGates.reset (new juce::Label ("new label",
                                          TRANS("Gates")));
    addAndMakeVisible (lblMergeGates.get());
    lblMergeGates->setFont (juce::Font (15.00f, juce::Font::plain));
    lblMergeGates->setJustificationType (juce::Justification::centredLeft);
    lblMergeGates->setEditable (false, false, false);
    lblMergeGates->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblMergeGates->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblMergeGates->setBounds (104, 248, 55, 24);

    txtMergeCCs.reset (new juce::TextEditor ("new text editor"));
    addAndMakeVisible (txtMergeCCs.get());
    txtMergeCCs->setMultiLine (false);
    txtMergeCCs->setReturnKeyStartsNewLine (false);
    txtMergeCCs->setReadOnly (false);
    txtMergeCCs->setScrollbarsShown (false);
    txtMergeCCs->setCaretVisible (true);
    txtMergeCCs->setPopupMenuEnabled (true);
    txtMergeCCs->setText (TRANS("1"));

    txtMergeCCs->setBounds (160, 272, 40, 24);

    lblMergeCCs.reset (new juce::Label ("new label",
                                        TRANS("CCs")));
    addAndMakeVisible (lblMergeCCs.get());
    lblMergeCCs->setFont (juce::Font (15.00f, juce::Font::plain));
    lblMergeCCs->setJustificationType (juce::Justification::centredLeft);
    lblMergeCCs->setEditable (false, false, false);
    lblMergeCCs->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblMergeCCs->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblMergeCCs->setBounds (104, 272, 55, 24);

    txtQuantVolPan.reset (new juce::TextEditor ("new text editor"));
    addAndMakeVisible (txtQuantVolPan.get());
    txtQuantVolPan->setMultiLine (false);
    txtQuantVolPan->setReturnKeyStartsNewLine (false);
    txtQuantVolPan->setReadOnly (false);
    txtQuantVolPan->setScrollbarsShown (false);
    txtQuantVolPan->setCaretVisible (true);
    txtQuantVolPan->setPopupMenuEnabled (true);
    txtQuantVolPan->setText (TRANS("2"));

    txtQuantVolPan->setBounds (272, 224, 40, 24);

    lblQuantVolPan.reset (new juce::Label ("new label",
                                           TRANS("Vol/Pan")));
    addAndMakeVisible (lblQuantVolPan.get());
    lblQuantVolPan->setFont (juce::Font (15.00f, juce::Font::plain));
    lblQuantVolPan->setJustificationType (juce::Justification::centredLeft);
    lblQuantVolPan->setEditable (false, false, false);
    lblQuantVolPan->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblQuantVolPan->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblQuantVolPan->setBounds (208, 224, 64, 24);

    txtQuantPitch.reset (new juce::TextEditor ("new text editor"));
    addAndMakeVisible (txtQuantPitch.get());
    txtQuantPitch->setMultiLine (false);
    txtQuantPitch->setReturnKeyStartsNewLine (false);
    txtQuantPitch->setReadOnly (false);
    txtQuantPitch->setScrollbarsShown (false);
    txtQuantPitch->setCaretVisible (true);
    txtQuantPitch->setPopupMenuEnabled (true);
    txtQuantPitch->setText (TRANS("1"));

    txtQuantPitch->setBounds (272, 248, 40, 24);

    lblQuantPitch.reset (new juce::Label ("new label",
                                          TRANS("Pitch")));
    addAndMakeVisible (lblQuantPitch.get());
    lblQuantPitch->setFont (juce::Font (15.00f, juce::Font::plain));
    lblQuantPitch->setJustificationType (juce::Justification::centredLeft);
    lblQuantPitch->setEditable (false, false, false);
    lblQuantPitch->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblQuantPitch->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblQuantPitch->setBounds (208, 248, 64, 24);

    txtQuantOther.reset (new juce::TextEditor ("new text editor"));
    addAndMakeVisible (txtQuantOther.get());
    txtQuantOther->setMultiLine (false);
    txtQuantOther->setReturnKeyStartsNewLine (false);
    txtQuantOther->setReadOnly (false);
    txtQuantOther->setScrollbarsShown (false);
    txtQuantOther->setCaretVisible (true);
    txtQuantOther->setPopupMenuEnabled (true);
    txtQuantOther->setText (TRANS("1"));

    txtQuantOther->setBounds (272, 272, 40, 24);

    lblQuantOther.reset (new juce::Label ("new label",
                                          TRANS("Other")));
    addAndMakeVisible (lblQuantOther.get());
    lblQuantOther->setFont (juce::Font (15.00f, juce::Font::plain));
    lblQuantOther->setJustificationType (juce::Justification::centredLeft);
    lblQuantOther->setEditable (false, false, false);
    lblQuantOther->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblQuantOther->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblQuantOther->setBounds (208, 272, 64, 24);

    lblMerge.reset (new juce::Label ("new label",
                                     TRANS("Merge Close:")));
    addAndMakeVisible (lblMerge.get());
    lblMerge->setFont (juce::Font (15.00f, juce::Font::plain));
    lblMerge->setJustificationType (juce::Justification::centredLeft);
    lblMerge->setEditable (false, false, false);
    lblMerge->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblMerge->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblMerge->setBounds (104, 200, 96, 24);

    lblQuant.reset (new juce::Label ("new label",
                                     TRANS("Quantize:")));
    addAndMakeVisible (lblQuant.get());
    lblQuant->setFont (juce::Font (15.00f, juce::Font::plain));
    lblQuant->setJustificationType (juce::Justification::centredLeft);
    lblQuant->setEditable (false, false, false);
    lblQuant->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblQuant->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblQuant->setBounds (208, 200, 104, 24);

    grpExportMIDI.reset (new juce::GroupComponent ("new group",
                                                   TRANS("MIDI Export")));
    addAndMakeVisible (grpExportMIDI.get());

    grpExportMIDI->setBounds (8, 392, 320, 96);

    optInstOrig.reset (new juce::ToggleButton ("new toggle button"));
    addAndMakeVisible (optInstOrig.get());
    optInstOrig->setButtonText (TRANS("Orig Inst/Drums"));
    optInstOrig->setRadioGroupId (2);
    optInstOrig->addListener (this);
    optInstOrig->setToggleState (true, dontSendNotification);

    optInstOrig->setBounds (16, 408, 144, 24);

    optInstGM10.reset (new juce::ToggleButton ("new toggle button"));
    addAndMakeVisible (optInstGM10.get());
    optInstGM10->setButtonText (TRANS("GM, drums ch 10"));
    optInstGM10->setRadioGroupId (2);
    optInstGM10->addListener (this);

    optInstGM10->setBounds (16, 432, 144, 24);

    optInstGMMulti.reset (new juce::ToggleButton ("new toggle button"));
    addAndMakeVisible (optInstGMMulti.get());
    optInstGMMulti->setButtonText (TRANS("GM, drums multi"));
    optInstGMMulti->setRadioGroupId (2);
    optInstGMMulti->addListener (this);

    optInstGMMulti->setBounds (16, 456, 144, 24);

    lblPPQN.reset (new juce::Label ("new label",
                                    TRANS("PPQN 48x:")));
    addAndMakeVisible (lblPPQN.get());
    lblPPQN->setFont (juce::Font (15.00f, juce::Font::plain));
    lblPPQN->setJustificationType (juce::Justification::centredLeft);
    lblPPQN->setEditable (false, false, false);
    lblPPQN->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblPPQN->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblPPQN->setBounds (176, 408, 95, 24);

    txtPPQN.reset (new juce::TextEditor ("new text editor"));
    addAndMakeVisible (txtPPQN.get());
    txtPPQN->setMultiLine (false);
    txtPPQN->setReturnKeyStartsNewLine (false);
    txtPPQN->setReadOnly (false);
    txtPPQN->setScrollbarsShown (false);
    txtPPQN->setCaretVisible (true);
    txtPPQN->setPopupMenuEnabled (true);
    txtPPQN->setText (TRANS("4"));

    txtPPQN->setBounds (272, 408, 40, 24);

    txtSeq.reset (new juce::TextEditor ("new text editor"));
    addAndMakeVisible (txtSeq.get());
    txtSeq->setMultiLine (true);
    txtSeq->setReturnKeyStartsNewLine (true);
    txtSeq->setReadOnly (true);
    txtSeq->setScrollbarsShown (true);
    txtSeq->setCaretVisible (false);
    txtSeq->setPopupMenuEnabled (false);
    txtSeq->setText (juce::String());

    txtSeq->setBounds (352, 248, 440, 544);

    lblInternal.reset (new juce::Label ("new label",
                                        TRANS("SEQ64 internal sequence representation:")));
    addAndMakeVisible (lblInternal.get());
    lblInternal->setFont (juce::Font (15.00f, juce::Font::plain));
    lblInternal->setJustificationType (juce::Justification::centredLeft);
    lblInternal->setEditable (false, false, false);
    lblInternal->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblInternal->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblInternal->setBounds (352, 224, 448, 24);

    lblDebug.reset (new juce::Label ("new label",
                                     TRANS("Debug output:")));
    addAndMakeVisible (lblDebug.get());
    lblDebug->setFont (juce::Font (15.00f, juce::Font::plain));
    lblDebug->setJustificationType (juce::Justification::centredLeft);
    lblDebug->setEditable (false, false, false);
    lblDebug->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblDebug->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblDebug->setBounds (352, 0, 448, 24);

    txtDebug.reset (new juce::TextEditor ("new text editor"));
    addAndMakeVisible (txtDebug.get());
    txtDebug->setMultiLine (true);
    txtDebug->setReturnKeyStartsNewLine (true);
    txtDebug->setReadOnly (true);
    txtDebug->setScrollbarsShown (true);
    txtDebug->setCaretVisible (false);
    txtDebug->setPopupMenuEnabled (false);
    txtDebug->setText (juce::String());

    txtDebug->setBounds (352, 24, 440, 192);

    grpABI.reset (new juce::GroupComponent (juce::String(),
                                            TRANS("Binary format (ABI)")));
    addAndMakeVisible (grpABI.get());

    grpABI->setBounds (8, 0, 320, 72);

    btnEditABI.reset (new juce::TextButton ("new button"));
    addAndMakeVisible (btnEditABI.get());
    btnEditABI->setButtonText (TRANS("Edit..."));
    btnEditABI->addListener (this);

    btnEditABI->setBounds (256, 24, 63, 32);

    chkRel.reset (new juce::ToggleButton ("new toggle button"));
    addAndMakeVisible (chkRel.get());
    chkRel->setButtonText (TRANS("Relative Addrs"));
    chkRel->addListener (this);

    chkRel->setBounds (16, 160, 128, 24);

    btnImportMIDI.reset (new juce::TextButton ("new button"));
    addAndMakeVisible (btnImportMIDI.get());
    btnImportMIDI->setButtonText (TRANS("Import MIDI"));
    btnImportMIDI->setConnectedEdges (juce::Button::ConnectedOnBottom);
    btnImportMIDI->addListener (this);

    btnImportMIDI->setBounds (8, 320, 152, 32);

    btnExportMIDI.reset (new juce::TextButton ("new button"));
    addAndMakeVisible (btnExportMIDI.get());
    btnExportMIDI->setButtonText (TRANS("Export MIDI"));
    btnExportMIDI->setConnectedEdges (juce::Button::ConnectedOnTop);
    btnExportMIDI->addListener (this);

    btnExportMIDI->setBounds (8, 352, 152, 32);

    btnImportMus.reset (new juce::TextButton ("new button"));
    addAndMakeVisible (btnImportMus.get());
    btnImportMus->setButtonText (TRANS("Import .mus"));
    btnImportMus->setConnectedEdges (juce::Button::ConnectedOnBottom);
    btnImportMus->addListener (this);

    btnImportMus->setBounds (8, 520, 152, 32);

    btnExportMus.reset (new juce::TextButton ("new button"));
    addAndMakeVisible (btnExportMus.get());
    btnExportMus->setButtonText (TRANS("Export .mus"));
    btnExportMus->setConnectedEdges (juce::Button::ConnectedOnTop);
    btnExportMus->addListener (this);

    btnExportMus->setBounds (8, 552, 152, 32);

    btnImportCom.reset (new juce::TextButton ("new button"));
    addAndMakeVisible (btnImportCom.get());
    btnImportCom->setButtonText (TRANS("Import .com/.aseq"));
    btnImportCom->setConnectedEdges (juce::Button::ConnectedOnBottom);
    btnImportCom->addListener (this);

    btnImportCom->setBounds (8, 704, 152, 32);

    btnExportCom.reset (new juce::TextButton ("new button"));
    addAndMakeVisible (btnExportCom.get());
    btnExportCom->setButtonText (TRANS("Export .com/.aseq"));
    btnExportCom->setConnectedEdges (juce::Button::ConnectedOnTop);
    btnExportCom->addListener (this);

    btnExportCom->setBounds (8, 736, 152, 32);

    lblMuteBhv.reset (new juce::Label ("new label",
                                       TRANS("Mute Behav.")));
    addAndMakeVisible (lblMuteBhv.get());
    lblMuteBhv->setFont (juce::Font (15.00f, juce::Font::plain));
    lblMuteBhv->setJustificationType (juce::Justification::centredLeft);
    lblMuteBhv->setEditable (false, false, false);
    lblMuteBhv->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblMuteBhv->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblMuteBhv->setBounds (192, 112, 88, 24);

    txtMuteBhv.reset (new juce::TextEditor ("txtMuteBhv"));
    addAndMakeVisible (txtMuteBhv.get());
    txtMuteBhv->setMultiLine (false);
    txtMuteBhv->setReturnKeyStartsNewLine (false);
    txtMuteBhv->setReadOnly (false);
    txtMuteBhv->setScrollbarsShown (false);
    txtMuteBhv->setCaretVisible (true);
    txtMuteBhv->setPopupMenuEnabled (true);
    txtMuteBhv->setText (TRANS("20"));

    txtMuteBhv->setBounds (280, 112, 40, 24);

    lblMuteScale.reset (new juce::Label ("new label",
                                         TRANS("Mute Scale")));
    addAndMakeVisible (lblMuteScale.get());
    lblMuteScale->setFont (juce::Font (15.00f, juce::Font::plain));
    lblMuteScale->setJustificationType (juce::Justification::centredLeft);
    lblMuteScale->setEditable (false, false, false);
    lblMuteScale->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblMuteScale->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblMuteScale->setBounds (192, 136, 88, 24);

    txtMuteScale.reset (new juce::TextEditor ("txtMuteScale"));
    addAndMakeVisible (txtMuteScale.get());
    txtMuteScale->setMultiLine (false);
    txtMuteScale->setReturnKeyStartsNewLine (false);
    txtMuteScale->setReadOnly (false);
    txtMuteScale->setScrollbarsShown (false);
    txtMuteScale->setCaretVisible (true);
    txtMuteScale->setPopupMenuEnabled (true);
    txtMuteScale->setText (TRANS("32"));

    txtMuteScale->setBounds (280, 136, 40, 24);

    chkPref.reset (new juce::ToggleButton ("chkPref"));
    addAndMakeVisible (chkPref.get());
    chkPref->setButtonText (TRANS("Use .pref file (if exist)"));
    chkPref->addListener (this);
    chkPref->setToggleState (true, dontSendNotification);

    chkPref->setBounds (16, 112, 176, 24);

    chkCallOnlyLyr.reset (new juce::ToggleButton ("chkCallOnlyLyr"));
    addAndMakeVisible (chkCallOnlyLyr.get());
    chkCallOnlyLyr->setButtonText (TRANS("Only"));
    chkCallOnlyLyr->addListener (this);

    chkCallOnlyLyr->setBounds (32, 224, 64, 24);

    lblCallOnlyLy.reset (new juce::Label ("lblCallOnlyLy",
                                          TRANS("NtLyr")));
    addAndMakeVisible (lblCallOnlyLy.get());
    lblCallOnlyLy->setFont (juce::Font (15.00f, juce::Font::plain));
    lblCallOnlyLy->setJustificationType (juce::Justification::centredLeft);
    lblCallOnlyLy->setEditable (false, false, false);
    lblCallOnlyLy->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblCallOnlyLy->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblCallOnlyLy->setBounds (54, 240, 48, 24);

    lblStyle.reset (new juce::Label ("lblStyle",
                                     TRANS("Style:")));
    addAndMakeVisible (lblStyle.get());
    lblStyle->setFont (juce::Font (15.00f, juce::Font::plain));
    lblStyle->setJustificationType (juce::Justification::centredLeft);
    lblStyle->setEditable (false, false, false);
    lblStyle->setColour (juce::TextEditor::textColourId, juce::Colours::black);
    lblStyle->setColour (juce::TextEditor::backgroundColourId, juce::Colour (0x00000000));

    lblStyle->setBounds (16, 632, 56, 24);

    optStyleMusic.reset (new juce::ToggleButton ("optStyleMusic"));
    addAndMakeVisible (optStyleMusic.get());
    optStyleMusic->setButtonText (TRANS("Music"));
    optStyleMusic->setRadioGroupId (3);
    optStyleMusic->addListener (this);
    optStyleMusic->setToggleState (true, dontSendNotification);

    optStyleMusic->setBounds (72, 632, 80, 24);

    optStyleSFX.reset (new juce::ToggleButton ("optStyleSFX"));
    addAndMakeVisible (optStyleSFX.get());
    optStyleSFX->setButtonText (TRANS("Technical / SFX"));
    optStyleSFX->setRadioGroupId (3);
    optStyleSFX->addListener (this);

    optStyleSFX->setBounds (152, 632, 136, 24);

    internalPath1.startNewSubPath (160.0f, 336.0f);
    internalPath1.lineTo (348.0f, 336.0f);
    internalPath1.startNewSubPath (340.0f, 344.0f);
    internalPath1.lineTo (348.0f, 336.0f);
    internalPath1.lineTo (340.0f, 328.0f);

    internalPath2.startNewSubPath (352.0f, 368.0f);
    internalPath2.lineTo (164.0f, 368.0f);
    internalPath2.startNewSubPath (172.0f, 376.0f);
    internalPath2.lineTo (164.0f, 368.0f);
    internalPath2.lineTo (172.0f, 360.0f);

    internalPath3.startNewSubPath (160.0f, 536.0f);
    internalPath3.lineTo (348.0f, 536.0f);
    internalPath3.startNewSubPath (340.0f, 544.0f);
    internalPath3.lineTo (348.0f, 536.0f);
    internalPath3.lineTo (340.0f, 528.0f);

    internalPath4.startNewSubPath (352.0f, 568.0f);
    internalPath4.lineTo (164.0f, 568.0f);
    internalPath4.startNewSubPath (172.0f, 576.0f);
    internalPath4.lineTo (164.0f, 568.0f);
    internalPath4.lineTo (172.0f, 560.0f);

    internalPath5.startNewSubPath (160.0f, 720.0f);
    internalPath5.lineTo (348.0f, 720.0f);
    internalPath5.startNewSubPath (340.0f, 728.0f);
    internalPath5.lineTo (348.0f, 720.0f);
    internalPath5.lineTo (340.0f, 712.0f);

    internalPath6.startNewSubPath (352.0f, 752.0f);
    internalPath6.lineTo (164.0f, 752.0f);
    internalPath6.startNewSubPath (172.0f, 760.0f);
    internalPath6.lineTo (164.0f, 752.0f);
    internalPath6.lineTo (172.0f, 744.0f);


    //[UserPreSize]

    lstABI.reset(new TextListBox(this));
    addAndMakeVisible(lstABI.get());
    lstABI->setBounds(16, 16, 232, 48);

    txtDebug->setEnabled(false);

    //[/UserPreSize]

    setSize (800, 800);


    //[Constructor] You can add your own custom stuff here..
    StringArray abis = SeqFile::getAvailABIs();
    for(int i=0; i<abis.size(); ++i){
        lstABI->add(abis[i]);
    }
    //[/Constructor]
}

SeqEditor::~SeqEditor()
{
    //[Destructor_pre]. You can add your own custom destruction code here..
    //[/Destructor_pre]

    grpMusDialect = nullptr;
    optMusCommunity = nullptr;
    optMusCanon = nullptr;
    optMusCanonOld = nullptr;
    grpImportMIDI = nullptr;
    chkSmartLoop = nullptr;
    grpOptimizer = nullptr;
    chkUseCalls = nullptr;
    txtMasterVol = nullptr;
    lblMasterVol = nullptr;
    chkUseLoops = nullptr;
    txtMergeVel = nullptr;
    lblMergeVel = nullptr;
    txtMergeGates = nullptr;
    lblMergeGates = nullptr;
    txtMergeCCs = nullptr;
    lblMergeCCs = nullptr;
    txtQuantVolPan = nullptr;
    lblQuantVolPan = nullptr;
    txtQuantPitch = nullptr;
    lblQuantPitch = nullptr;
    txtQuantOther = nullptr;
    lblQuantOther = nullptr;
    lblMerge = nullptr;
    lblQuant = nullptr;
    grpExportMIDI = nullptr;
    optInstOrig = nullptr;
    optInstGM10 = nullptr;
    optInstGMMulti = nullptr;
    lblPPQN = nullptr;
    txtPPQN = nullptr;
    txtSeq = nullptr;
    lblInternal = nullptr;
    lblDebug = nullptr;
    txtDebug = nullptr;
    grpABI = nullptr;
    btnEditABI = nullptr;
    chkRel = nullptr;
    btnImportMIDI = nullptr;
    btnExportMIDI = nullptr;
    btnImportMus = nullptr;
    btnExportMus = nullptr;
    btnImportCom = nullptr;
    btnExportCom = nullptr;
    lblMuteBhv = nullptr;
    txtMuteBhv = nullptr;
    lblMuteScale = nullptr;
    txtMuteScale = nullptr;
    chkPref = nullptr;
    chkCallOnlyLyr = nullptr;
    lblCallOnlyLy = nullptr;
    lblStyle = nullptr;
    optStyleMusic = nullptr;
    optStyleSFX = nullptr;


    //[Destructor]. You can add your own custom destruction code here..
    //[/Destructor]
}

//==============================================================================
void SeqEditor::paint (juce::Graphics& g)
{
    //[UserPrePaint] Add your own custom painting code here..
    //[/UserPrePaint]

    g.fillAll (juce::Colour (0xff323e44));

    {
        float x = 0, y = 0;
        juce::Colour fillColour = juce::Colours::aliceblue;
        juce::Colour strokeColour = juce::Colours::aliceblue;
        //[UserPaintCustomArguments] Customize the painting arguments here..
        //[/UserPaintCustomArguments]
        g.setColour (fillColour);
        g.fillPath (internalPath1, juce::AffineTransform::translation(x, y));
        g.setColour (strokeColour);
        g.strokePath (internalPath1, juce::PathStrokeType (4.200f), juce::AffineTransform::translation(x, y));
    }

    {
        float x = 0, y = 0;
        juce::Colour fillColour = juce::Colours::aliceblue;
        juce::Colour strokeColour = juce::Colours::aliceblue;
        //[UserPaintCustomArguments] Customize the painting arguments here..
        //[/UserPaintCustomArguments]
        g.setColour (fillColour);
        g.fillPath (internalPath2, juce::AffineTransform::translation(x, y));
        g.setColour (strokeColour);
        g.strokePath (internalPath2, juce::PathStrokeType (4.200f), juce::AffineTransform::translation(x, y));
    }

    {
        float x = 0, y = 0;
        juce::Colour fillColour = juce::Colours::aliceblue;
        juce::Colour strokeColour = juce::Colours::aliceblue;
        //[UserPaintCustomArguments] Customize the painting arguments here..
        //[/UserPaintCustomArguments]
        g.setColour (fillColour);
        g.fillPath (internalPath3, juce::AffineTransform::translation(x, y));
        g.setColour (strokeColour);
        g.strokePath (internalPath3, juce::PathStrokeType (4.200f), juce::AffineTransform::translation(x, y));
    }

    {
        float x = 0, y = 0;
        juce::Colour fillColour = juce::Colours::aliceblue;
        juce::Colour strokeColour = juce::Colours::aliceblue;
        //[UserPaintCustomArguments] Customize the painting arguments here..
        //[/UserPaintCustomArguments]
        g.setColour (fillColour);
        g.fillPath (internalPath4, juce::AffineTransform::translation(x, y));
        g.setColour (strokeColour);
        g.strokePath (internalPath4, juce::PathStrokeType (4.200f), juce::AffineTransform::translation(x, y));
    }

    {
        float x = 0, y = 0;
        juce::Colour fillColour = juce::Colours::aliceblue;
        juce::Colour strokeColour = juce::Colours::aliceblue;
        //[UserPaintCustomArguments] Customize the painting arguments here..
        //[/UserPaintCustomArguments]
        g.setColour (fillColour);
        g.fillPath (internalPath5, juce::AffineTransform::translation(x, y));
        g.setColour (strokeColour);
        g.strokePath (internalPath5, juce::PathStrokeType (4.200f), juce::AffineTransform::translation(x, y));
    }

    {
        float x = 0, y = 0;
        juce::Colour fillColour = juce::Colours::aliceblue;
        juce::Colour strokeColour = juce::Colours::aliceblue;
        //[UserPaintCustomArguments] Customize the painting arguments here..
        //[/UserPaintCustomArguments]
        g.setColour (fillColour);
        g.fillPath (internalPath6, juce::AffineTransform::translation(x, y));
        g.setColour (strokeColour);
        g.strokePath (internalPath6, juce::PathStrokeType (4.200f), juce::AffineTransform::translation(x, y));
    }

    //[UserPaint] Add your own custom painting code here..
    //[/UserPaint]
}

void SeqEditor::resized()
{
    //[UserPreResize] Add your own custom resize code here..
    //[/UserPreResize]

    //[UserResized] Add your own custom resize handling here..
    //[/UserResized]
}

void SeqEditor::buttonClicked (juce::Button* buttonThatWasClicked)
{
    //[UserbuttonClicked_Pre]
    //[/UserbuttonClicked_Pre]

    if (buttonThatWasClicked == optMusCommunity.get())
    {
        //[UserButtonCode_optMusCommunity] -- add your button handler code here..
        //[/UserButtonCode_optMusCommunity]
    }
    else if (buttonThatWasClicked == optMusCanon.get())
    {
        //[UserButtonCode_optMusCanon] -- add your button handler code here..
        //[/UserButtonCode_optMusCanon]
    }
    else if (buttonThatWasClicked == optMusCanonOld.get())
    {
        //[UserButtonCode_optMusCanonOld] -- add your button handler code here..
        //[/UserButtonCode_optMusCanonOld]
    }
    else if (buttonThatWasClicked == chkSmartLoop.get())
    {
        //[UserButtonCode_chkSmartLoop] -- add your button handler code here..
        //[/UserButtonCode_chkSmartLoop]
    }
    else if (buttonThatWasClicked == chkUseCalls.get())
    {
        //[UserButtonCode_chkUseCalls] -- add your button handler code here..
        //[/UserButtonCode_chkUseCalls]
    }
    else if (buttonThatWasClicked == chkUseLoops.get())
    {
        //[UserButtonCode_chkUseLoops] -- add your button handler code here..
        //[/UserButtonCode_chkUseLoops]
    }
    else if (buttonThatWasClicked == optInstOrig.get())
    {
        //[UserButtonCode_optInstOrig] -- add your button handler code here..
        //[/UserButtonCode_optInstOrig]
    }
    else if (buttonThatWasClicked == optInstGM10.get())
    {
        //[UserButtonCode_optInstGM10] -- add your button handler code here..
        //[/UserButtonCode_optInstGM10]
    }
    else if (buttonThatWasClicked == optInstGMMulti.get())
    {
        //[UserButtonCode_optInstGMMulti] -- add your button handler code here..
        //[/UserButtonCode_optInstGMMulti]
    }
    else if (buttonThatWasClicked == btnEditABI.get())
    {
        //[UserButtonCode_btnEditABI] -- add your button handler code here..
        abieditor.reset(new SeqABIEditor(lstABI->get(lstABI->getLastRowSelected())));
        //[/UserButtonCode_btnEditABI]
    }
    else if (buttonThatWasClicked == chkRel.get())
    {
        //[UserButtonCode_chkRel] -- add your button handler code here..
        //[/UserButtonCode_chkRel]
    }
    else if (buttonThatWasClicked == btnImportMIDI.get())
    {
        //[UserButtonCode_btnImportMIDI] -- add your button handler code here..
        ValueTree abi = getABI();
        if(!abi.isValid()) return;
        if(!checkSeqPresence(false)) return;

        ValueTree midiopts("midiopts");
        midiopts.setProperty("pref", chkPref->getToggleState(), nullptr);
        midiopts.setProperty("smartloop", chkSmartLoop->getToggleState(), nullptr);
        midiopts.setProperty("reladdr", chkRel->getToggleState(), nullptr);
        midiopts.setProperty("mutebhv", txtMuteBhv->getText().getHexValue32(), nullptr);
        midiopts.setProperty("mutescale", txtMuteScale->getText().getHexValue32(), nullptr);
        midiopts.setProperty("mastervol", txtMasterVol->getText().getHexValue32(), nullptr);

        midiopts.setProperty("usecalls", chkUseCalls->getToggleState(), nullptr);
        midiopts.setProperty("callonlylayer", chkCallOnlyLyr->getToggleState(), nullptr);
        midiopts.setProperty("useloops", chkUseLoops->getToggleState(), nullptr);
        midiopts.setProperty("delta_vel", txtMergeVel->getText().getFloatValue(), nullptr);
        midiopts.setProperty("delta_gate", txtMergeGates->getText().getFloatValue(), nullptr);
        midiopts.setProperty("delta_cc", txtMergeCCs->getText().getFloatValue(), nullptr);
        midiopts.setProperty("q_volpan_amp", txtQuantVolPan->getText().getFloatValue(), nullptr);
        midiopts.setProperty("q_pitch_amp", txtQuantPitch->getText().getFloatValue(), nullptr);
        midiopts.setProperty("q_other_amp", txtQuantOther->getText().getFloatValue(), nullptr);

        //TODO default files
        File f = File::getSpecialLocation(File::userHomeDirectory); //TODO SEQ64::readFolderProperty("midiimportfolder");
        FileChooser box("Select a MIDI to load...", f, "*.mid;*.midi;*.rmi", true);
        if(!box.browseForFileToOpen()) return;
        f = box.getResult();
        if(!f.existsAsFile()){
            std::cout << "File " << f.getFullPathName() << " does not exist!";
            return;
        }
        //TODO SEQ64::writeProperty("midiimportfolder", dest.getParentDirectory().getFullPathName());
        seq.reset(new SeqFile(abi));
        startSeqOperation("MIDI import", &SeqFile::importMIDI, f, midiopts);
        //[/UserButtonCode_btnImportMIDI]
    }
    else if (buttonThatWasClicked == btnExportMIDI.get())
    {
        //[UserButtonCode_btnExportMIDI] -- add your button handler code here..
        if(!checkSeqPresence(true)) return;

        ValueTree midiopts("midiopts");
        midiopts.setProperty("ppqnmultiplier", txtPPQN->getText().getFloatValue(), nullptr);
        midiopts.setProperty("exportformat",
            optInstOrig->getToggleState() ? "original" :
            optInstGM10->getToggleState() ? "gm_ch10" : "gm_multi", nullptr);

        File savelocation = File::getSpecialLocation(File::userHomeDirectory); //SEQ64::readFolderProperty("midifolder");
        FileChooser box("Save MIDI", savelocation, "*.mid", true);
        if(!box.browseForFileToSave(true)) return;
        savelocation = box.getResult();
        startSeqOperation("MIDI export", &SeqFile::exportMIDI, savelocation, midiopts);
        //[/UserButtonCode_btnExportMIDI]
    }
    else if (buttonThatWasClicked == btnImportMus.get())
    {
        //[UserButtonCode_btnImportMus] -- add your button handler code here..
        ValueTree abi = getABI();
        if(!abi.isValid()) return;
        if(!checkSeqPresence(false)) return;
        File f = File::getSpecialLocation(File::userHomeDirectory); //TODO SEQ64::readFolderProperty("romfolder");
        FileChooser box("Load .mus", f, "*.mus", true);
        if(!box.browseForFileToOpen()) return;
        f = box.getResult();
        seq.reset(new SeqFile(abi));
        startSeqOperation(".mus import", &SeqFile::importMus, f);
        //[/UserButtonCode_btnImportMus]
    }
    else if (buttonThatWasClicked == btnExportMus.get())
    {
        //[UserButtonCode_btnExportMus] -- add your button handler code here..
        if(!checkSeqPresence(true)) return;
        File savelocation = File::getSpecialLocation(File::userHomeDirectory); //SEQ64::readFolderProperty("comfolder");
        FileChooser box("Save .mus", savelocation, "*.mus", true);
        if(!box.browseForFileToSave(true)) return;
        savelocation = box.getResult();
        int dialect = optMusCommunity->getToggleState() ? 0 : optMusCanon->getToggleState() ? 2 : 4;
        dialect |= optStyleSFX->getToggleState() ? 1 : 0;
        startSeqOperation(".mus export", &SeqFile::exportMus, savelocation, dialect);
        //[/UserButtonCode_btnExportMus]
    }
    else if (buttonThatWasClicked == btnImportCom.get())
    {
        //[UserButtonCode_btnImportCom] -- add your button handler code here..
        ValueTree abi = getABI();
        if(!abi.isValid()) return;
        if(!checkSeqPresence(false)) return;
        File f = File::getSpecialLocation(File::userHomeDirectory); //TODO SEQ64::readFolderProperty("romfolder");
        FileChooser box("Load .com/.aseq", f, "*.com;*.aseq;*.m64;*.bin;*.seq", true);
        if(!box.browseForFileToOpen()) return;
        f = box.getResult();
        seq.reset(new SeqFile(abi));
        startSeqOperation(".com/.aseq import", &SeqFile::importCom, f);
        //[/UserButtonCode_btnImportCom]
    }
    else if (buttonThatWasClicked == btnExportCom.get())
    {
        //[UserButtonCode_btnExportCom] -- add your button handler code here..
        if(!checkSeqPresence(true)) return;
        File savelocation = File::getSpecialLocation(File::userHomeDirectory); //SEQ64::readFolderProperty("comfolder");
        FileChooser box("Save .com/.aseq", savelocation, "*.com;*.aseq;*.m64;*.bin;*.seq", true);
        if(!box.browseForFileToSave(true)) return;
        savelocation = box.getResult();
        startSeqOperation(".com/.aseq export", &SeqFile::exportCom, savelocation);
        //[/UserButtonCode_btnExportCom]
    }
    else if (buttonThatWasClicked == chkPref.get())
    {
        //[UserButtonCode_chkPref] -- add your button handler code here..
        //[/UserButtonCode_chkPref]
    }
    else if (buttonThatWasClicked == chkCallOnlyLyr.get())
    {
        //[UserButtonCode_chkCallOnlyLyr] -- add your button handler code here..
        //[/UserButtonCode_chkCallOnlyLyr]
    }
    else if (buttonThatWasClicked == optStyleMusic.get())
    {
        //[UserButtonCode_optStyleMusic] -- add your button handler code here..
        //[/UserButtonCode_optStyleMusic]
    }
    else if (buttonThatWasClicked == optStyleSFX.get())
    {
        //[UserButtonCode_optStyleSFX] -- add your button handler code here..
        //[/UserButtonCode_optStyleSFX]
    }

    //[UserbuttonClicked_Post]
    //[/UserbuttonClicked_Post]
}



//[MiscUserCode] You can add your own definitions of your custom methods or any other code here...

void SeqEditor::rowSelected(TextListBox* parent, int row){

}

void SeqEditor::timerCallback(){
    if(!seq){
        jassertfalse;
        stopTimer();
        return;
    }
    txtDebug->insertTextAtCaret(seq->getDebugOutput());
    if(!opnotdone.test_and_set()){
        //Finished
        opthread->join();
        opthread.reset(nullptr);
        stopTimer();
        txtDebug->insertTextAtCaret(seq->getDebugOutput());
        txtSeq->setText(seq->getInternalString());
        if(opres == 0){
            NativeMessageBox::showMessageBox(AlertWindow::InfoIcon, "seq64",
                opdesc + " succeeded!");
        }else if(opres == 1){
            NativeMessageBox::showMessageBox(AlertWindow::WarningIcon, "seq64",
                opdesc + " completed, but there were warnings, see the debug"
                " output for details.");
        }else{
            NativeMessageBox::showMessageBox(AlertWindow::WarningIcon, "seq64",
                opdesc + " failed, see the debug output for details.");
        }
        setEnabled(true);
        return;
    }
}

ValueTree SeqEditor::getABI(){
    ValueTree abi = SeqFile::loadABI(lstABI->get(lstABI->getLastRowSelected()));
    if(!abi.isValid()){
        NativeMessageBox::showMessageBox(AlertWindow::WarningIcon, "seq64",
            "Invalid ABI selected!");
    }
    return abi;
}
bool SeqEditor::checkSeqPresence(bool shouldExist){
    if(!shouldExist && seq){
        if(!NativeMessageBox::showOkCancelBox(AlertWindow::WarningIcon,
                "Overwrite?", "A sequence is already loaded, overwrite it?",
                nullptr, nullptr)) return false;
    }else if(shouldExist && !seq){
        NativeMessageBox::showMessageBox(AlertWindow::WarningIcon, "seq64",
            "There is no sequence loaded.");
        return false;
    }
    return true;
}

template<class Fn, class... Args> void SeqEditor::doSeqOperation(Fn&& fn, Args... args){
    opres = (seq.get()->*fn)(args...);
    opnotdone.clear();
}

template<class Fn, class... Args> void SeqEditor::startSeqOperation(String desc, Fn&& fn, Args... args){
    setEnabled(false);
    txtDebug->setText("");
    txtDebug->setEnabled(false);
    txtSeq->setText("");
    opdesc = desc;
    opnotdone.test_and_set();
    startTimer(33);
    opthread.reset(new std::thread(&SeqEditor::doSeqOperation<Fn, Args...>, this, fn, args...));
}

//[/MiscUserCode]


//==============================================================================
#if 0
/*  -- Projucer information section --

    This is where the Projucer stores the metadata that describe this GUI layout, so
    make changes in here at your peril!

BEGIN_JUCER_METADATA

<JUCER_COMPONENT documentType="Component" className="SeqEditor" componentName=""
                 parentClasses="public Component, private TextListBox::Listener, private Timer"
                 constructorParams="" variableInitialisers="seq(nullptr), opthread(nullptr)"
                 snapPixels="8" snapActive="1" snapShown="1" overlayOpacity="0.330"
                 fixedSize="1" initialWidth="800" initialHeight="800">
  <BACKGROUND backgroundColour="ff323e44">
    <PATH pos="0 0 100 100" fill="solid: fff0f8ff" hasStroke="1" stroke="4.2, mitered, butt"
          strokeColour="solid: fff0f8ff" nonZeroWinding="1">s 160 336 l 348 336 s 340 344 l 348 336 l 340 328</PATH>
    <PATH pos="0 0 100 100" fill="solid: fff0f8ff" hasStroke="1" stroke="4.2, mitered, butt"
          strokeColour="solid: fff0f8ff" nonZeroWinding="1">s 352 368 l 164 368 s 172 376 l 164 368 l 172 360</PATH>
    <PATH pos="0 0 100 100" fill="solid: fff0f8ff" hasStroke="1" stroke="4.2, mitered, butt"
          strokeColour="solid: fff0f8ff" nonZeroWinding="1">s 160 536 l 348 536 s 340 544 l 348 536 l 340 528</PATH>
    <PATH pos="0 0 100 100" fill="solid: fff0f8ff" hasStroke="1" stroke="4.2, mitered, butt"
          strokeColour="solid: fff0f8ff" nonZeroWinding="1">s 352 568 l 164 568 s 172 576 l 164 568 l 172 560</PATH>
    <PATH pos="0 0 100 100" fill="solid: fff0f8ff" hasStroke="1" stroke="4.2, mitered, butt"
          strokeColour="solid: fff0f8ff" nonZeroWinding="1">s 160 720 l 348 720 s 340 728 l 348 720 l 340 712</PATH>
    <PATH pos="0 0 100 100" fill="solid: fff0f8ff" hasStroke="1" stroke="4.2, mitered, butt"
          strokeColour="solid: fff0f8ff" nonZeroWinding="1">s 352 752 l 164 752 s 172 760 l 164 752 l 172 744</PATH>
  </BACKGROUND>
  <GROUPCOMPONENT name="" id="288b23c83f4e83ab" memberName="grpMusDialect" virtualName=""
                  explicitFocusOrder="0" pos="8 593 320 71" title=".mus dialect (for export)"/>
  <TOGGLEBUTTON name="new toggle button" id="47cfaabd82293101" memberName="optMusCommunity"
                virtualName="" explicitFocusOrder="0" pos="16 608 112 24" buttonText="Community"
                connectedEdges="0" needsCallback="1" radioGroupId="1" state="1"/>
  <TOGGLEBUTTON name="new toggle button" id="aa9f5ce6f473ab73" memberName="optMusCanon"
                virtualName="" explicitFocusOrder="0" pos="128 608 80 24" buttonText="Canon"
                connectedEdges="0" needsCallback="1" radioGroupId="1" state="0"/>
  <TOGGLEBUTTON name="new toggle button" id="3788ddb7be05010c" memberName="optMusCanonOld"
                virtualName="" explicitFocusOrder="0" pos="208 608 112 24" buttonText="Canon (Old)"
                connectedEdges="0" needsCallback="1" radioGroupId="1" state="0"/>
  <GROUPCOMPONENT name="new group" id="6c3ae9ab90971ff0" memberName="grpImportMIDI"
                  virtualName="" explicitFocusOrder="0" pos="8 96 320 216" title="MIDI Import"/>
  <TOGGLEBUTTON name="new toggle button" id="298575bd077da219" memberName="chkSmartLoop"
                virtualName="" explicitFocusOrder="0" pos="16 136 112 24" buttonText="Smart Loop"
                connectedEdges="0" needsCallback="1" radioGroupId="0" state="1"/>
  <GROUPCOMPONENT name="new group" id="5c6bcdf4f16c5863" memberName="grpOptimizer"
                  virtualName="" explicitFocusOrder="0" pos="16 184 304 120" title="Optimizer"/>
  <TOGGLEBUTTON name="new toggle button" id="844c730ae280e7ec" memberName="chkUseCalls"
                virtualName="" explicitFocusOrder="0" pos="24 200 80 24" buttonText="Calls"
                connectedEdges="0" needsCallback="1" radioGroupId="0" state="1"/>
  <TEXTEDITOR name="new text editor" id="154dd00d08a19a23" memberName="txtMasterVol"
              virtualName="" explicitFocusOrder="0" pos="280 160 40 24" initialText="58"
              multiline="0" retKeyStartsLine="0" readonly="0" scrollbars="0"
              caret="1" popupmenu="1"/>
  <LABEL name="new label" id="2f44836e853ff58e" memberName="lblMasterVol"
         virtualName="" explicitFocusOrder="0" pos="168 160 112 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Default Mst.Vol." editableSingleClick="0"
         editableDoubleClick="0" focusDiscardsChanges="0" fontname="Default font"
         fontsize="15.0" kerning="0.0" bold="0" italic="0" justification="33"/>
  <TOGGLEBUTTON name="new toggle button" id="d41d23e2781f6f08" memberName="chkUseLoops"
                virtualName="" explicitFocusOrder="0" pos="24 264 80 24" buttonText="Loops"
                connectedEdges="0" needsCallback="1" radioGroupId="0" state="1"/>
  <TEXTEDITOR name="new text editor" id="78aaa4ed17c1daf0" memberName="txtMergeVel"
              virtualName="" explicitFocusOrder="0" pos="160 224 40 24" initialText="5"
              multiline="0" retKeyStartsLine="0" readonly="0" scrollbars="0"
              caret="1" popupmenu="1"/>
  <LABEL name="new label" id="2c9954e88ae8e669" memberName="lblMergeVel"
         virtualName="" explicitFocusOrder="0" pos="104 224 55 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Vels" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <TEXTEDITOR name="new text editor" id="8816310b8df382e9" memberName="txtMergeGates"
              virtualName="" explicitFocusOrder="0" pos="160 248 40 24" initialText="3"
              multiline="0" retKeyStartsLine="0" readonly="0" scrollbars="0"
              caret="1" popupmenu="1"/>
  <LABEL name="new label" id="b3c139534d0c5e82" memberName="lblMergeGates"
         virtualName="" explicitFocusOrder="0" pos="104 248 55 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Gates" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <TEXTEDITOR name="new text editor" id="5e89a6c4e553dd90" memberName="txtMergeCCs"
              virtualName="" explicitFocusOrder="0" pos="160 272 40 24" initialText="1"
              multiline="0" retKeyStartsLine="0" readonly="0" scrollbars="0"
              caret="1" popupmenu="1"/>
  <LABEL name="new label" id="66a9164a43b56ffb" memberName="lblMergeCCs"
         virtualName="" explicitFocusOrder="0" pos="104 272 55 24" edTextCol="ff000000"
         edBkgCol="0" labelText="CCs" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <TEXTEDITOR name="new text editor" id="db26cbb96e518db0" memberName="txtQuantVolPan"
              virtualName="" explicitFocusOrder="0" pos="272 224 40 24" initialText="2"
              multiline="0" retKeyStartsLine="0" readonly="0" scrollbars="0"
              caret="1" popupmenu="1"/>
  <LABEL name="new label" id="efae19279bcd8096" memberName="lblQuantVolPan"
         virtualName="" explicitFocusOrder="0" pos="208 224 64 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Vol/Pan" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <TEXTEDITOR name="new text editor" id="4a30b577b172724c" memberName="txtQuantPitch"
              virtualName="" explicitFocusOrder="0" pos="272 248 40 24" initialText="1"
              multiline="0" retKeyStartsLine="0" readonly="0" scrollbars="0"
              caret="1" popupmenu="1"/>
  <LABEL name="new label" id="158ac64e370f720a" memberName="lblQuantPitch"
         virtualName="" explicitFocusOrder="0" pos="208 248 64 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Pitch" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <TEXTEDITOR name="new text editor" id="555bf6985ab64c24" memberName="txtQuantOther"
              virtualName="" explicitFocusOrder="0" pos="272 272 40 24" initialText="1"
              multiline="0" retKeyStartsLine="0" readonly="0" scrollbars="0"
              caret="1" popupmenu="1"/>
  <LABEL name="new label" id="43e6a535c362df1d" memberName="lblQuantOther"
         virtualName="" explicitFocusOrder="0" pos="208 272 64 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Other" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <LABEL name="new label" id="6afc2a191b7a4913" memberName="lblMerge"
         virtualName="" explicitFocusOrder="0" pos="104 200 96 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Merge Close:" editableSingleClick="0"
         editableDoubleClick="0" focusDiscardsChanges="0" fontname="Default font"
         fontsize="15.0" kerning="0.0" bold="0" italic="0" justification="33"/>
  <LABEL name="new label" id="ce1f3929ac632965" memberName="lblQuant"
         virtualName="" explicitFocusOrder="0" pos="208 200 104 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Quantize:" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <GROUPCOMPONENT name="new group" id="abc01da3904d8db0" memberName="grpExportMIDI"
                  virtualName="" explicitFocusOrder="0" pos="8 392 320 96" title="MIDI Export"/>
  <TOGGLEBUTTON name="new toggle button" id="fb17c74cd24b8be6" memberName="optInstOrig"
                virtualName="" explicitFocusOrder="0" pos="16 408 144 24" buttonText="Orig Inst/Drums"
                connectedEdges="0" needsCallback="1" radioGroupId="2" state="1"/>
  <TOGGLEBUTTON name="new toggle button" id="592157384d470058" memberName="optInstGM10"
                virtualName="" explicitFocusOrder="0" pos="16 432 144 24" buttonText="GM, drums ch 10"
                connectedEdges="0" needsCallback="1" radioGroupId="2" state="0"/>
  <TOGGLEBUTTON name="new toggle button" id="974cd53f9babaa12" memberName="optInstGMMulti"
                virtualName="" explicitFocusOrder="0" pos="16 456 144 24" buttonText="GM, drums multi"
                connectedEdges="0" needsCallback="1" radioGroupId="2" state="0"/>
  <LABEL name="new label" id="20b130cdc7fc8b6f" memberName="lblPPQN" virtualName=""
         explicitFocusOrder="0" pos="176 408 95 24" edTextCol="ff000000"
         edBkgCol="0" labelText="PPQN 48x:" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <TEXTEDITOR name="new text editor" id="7884c8ddfeb40a43" memberName="txtPPQN"
              virtualName="" explicitFocusOrder="0" pos="272 408 40 24" initialText="4"
              multiline="0" retKeyStartsLine="0" readonly="0" scrollbars="0"
              caret="1" popupmenu="1"/>
  <TEXTEDITOR name="new text editor" id="6103737800c72a64" memberName="txtSeq"
              virtualName="" explicitFocusOrder="0" pos="352 248 440 544" initialText=""
              multiline="1" retKeyStartsLine="1" readonly="1" scrollbars="1"
              caret="0" popupmenu="0"/>
  <LABEL name="new label" id="acc8f386f68b50d2" memberName="lblInternal"
         virtualName="" explicitFocusOrder="0" pos="352 224 448 24" edTextCol="ff000000"
         edBkgCol="0" labelText="SEQ64 internal sequence representation:"
         editableSingleClick="0" editableDoubleClick="0" focusDiscardsChanges="0"
         fontname="Default font" fontsize="15.0" kerning="0.0" bold="0"
         italic="0" justification="33"/>
  <LABEL name="new label" id="4156baae8395f4b3" memberName="lblDebug"
         virtualName="" explicitFocusOrder="0" pos="352 0 448 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Debug output:" editableSingleClick="0"
         editableDoubleClick="0" focusDiscardsChanges="0" fontname="Default font"
         fontsize="15.0" kerning="0.0" bold="0" italic="0" justification="33"/>
  <TEXTEDITOR name="new text editor" id="354824bf45a24c31" memberName="txtDebug"
              virtualName="" explicitFocusOrder="0" pos="352 24 440 192" initialText=""
              multiline="1" retKeyStartsLine="1" readonly="1" scrollbars="1"
              caret="0" popupmenu="0"/>
  <GROUPCOMPONENT name="" id="8627fa20de81115" memberName="grpABI" virtualName=""
                  explicitFocusOrder="0" pos="8 0 320 72" title="Binary format (ABI)"/>
  <TEXTBUTTON name="new button" id="2804f8f09ab1af85" memberName="btnEditABI"
              virtualName="" explicitFocusOrder="0" pos="256 24 63 32" buttonText="Edit..."
              connectedEdges="0" needsCallback="1" radioGroupId="0"/>
  <TOGGLEBUTTON name="new toggle button" id="32dace4af418847d" memberName="chkRel"
                virtualName="" explicitFocusOrder="0" pos="16 160 128 24" buttonText="Relative Addrs"
                connectedEdges="0" needsCallback="1" radioGroupId="0" state="0"/>
  <TEXTBUTTON name="new button" id="dda1a6799546c40" memberName="btnImportMIDI"
              virtualName="" explicitFocusOrder="0" pos="8 320 152 32" buttonText="Import MIDI"
              connectedEdges="8" needsCallback="1" radioGroupId="0"/>
  <TEXTBUTTON name="new button" id="afcf973a847dd8fa" memberName="btnExportMIDI"
              virtualName="" explicitFocusOrder="0" pos="8 352 152 32" buttonText="Export MIDI"
              connectedEdges="4" needsCallback="1" radioGroupId="0"/>
  <TEXTBUTTON name="new button" id="3bb24dc32903c5e7" memberName="btnImportMus"
              virtualName="" explicitFocusOrder="0" pos="8 520 152 32" buttonText="Import .mus"
              connectedEdges="8" needsCallback="1" radioGroupId="0"/>
  <TEXTBUTTON name="new button" id="8f9107dadce8a52a" memberName="btnExportMus"
              virtualName="" explicitFocusOrder="0" pos="8 552 152 32" buttonText="Export .mus"
              connectedEdges="4" needsCallback="1" radioGroupId="0"/>
  <TEXTBUTTON name="new button" id="ce9eeb4274035fc6" memberName="btnImportCom"
              virtualName="" explicitFocusOrder="0" pos="8 704 152 32" buttonText="Import .com/.aseq"
              connectedEdges="8" needsCallback="1" radioGroupId="0"/>
  <TEXTBUTTON name="new button" id="e373bb4f6fe0c973" memberName="btnExportCom"
              virtualName="" explicitFocusOrder="0" pos="8 736 152 32" buttonText="Export .com/.aseq"
              connectedEdges="4" needsCallback="1" radioGroupId="0"/>
  <LABEL name="new label" id="f47463540eb17b52" memberName="lblMuteBhv"
         virtualName="" explicitFocusOrder="0" pos="192 112 88 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Mute Behav." editableSingleClick="0"
         editableDoubleClick="0" focusDiscardsChanges="0" fontname="Default font"
         fontsize="15.0" kerning="0.0" bold="0" italic="0" justification="33"/>
  <TEXTEDITOR name="txtMuteBhv" id="eaf577117e5f825a" memberName="txtMuteBhv"
              virtualName="" explicitFocusOrder="0" pos="280 112 40 24" initialText="20"
              multiline="0" retKeyStartsLine="0" readonly="0" scrollbars="0"
              caret="1" popupmenu="1"/>
  <LABEL name="new label" id="f55d4d9dc7a4d940" memberName="lblMuteScale"
         virtualName="" explicitFocusOrder="0" pos="192 136 88 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Mute Scale" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <TEXTEDITOR name="txtMuteScale" id="5781be6e6a4a3b3b" memberName="txtMuteScale"
              virtualName="" explicitFocusOrder="0" pos="280 136 40 24" initialText="32"
              multiline="0" retKeyStartsLine="0" readonly="0" scrollbars="0"
              caret="1" popupmenu="1"/>
  <TOGGLEBUTTON name="chkPref" id="dc2a1a56e93490e" memberName="chkPref" virtualName=""
                explicitFocusOrder="0" pos="16 112 176 24" buttonText="Use .pref file (if exist)"
                connectedEdges="0" needsCallback="1" radioGroupId="0" state="1"/>
  <TOGGLEBUTTON name="chkCallOnlyLyr" id="4d62bd8a13f76fa4" memberName="chkCallOnlyLyr"
                virtualName="" explicitFocusOrder="0" pos="32 224 64 24" buttonText="Only"
                connectedEdges="0" needsCallback="1" radioGroupId="0" state="0"/>
  <LABEL name="lblCallOnlyLy" id="1eae0080342723a0" memberName="lblCallOnlyLy"
         virtualName="" explicitFocusOrder="0" pos="54 240 48 24" edTextCol="ff000000"
         edBkgCol="0" labelText="NtLyr" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <LABEL name="lblStyle" id="d5bfeaf6e09966ec" memberName="lblStyle" virtualName=""
         explicitFocusOrder="0" pos="16 632 56 24" edTextCol="ff000000"
         edBkgCol="0" labelText="Style:" editableSingleClick="0" editableDoubleClick="0"
         focusDiscardsChanges="0" fontname="Default font" fontsize="15.0"
         kerning="0.0" bold="0" italic="0" justification="33"/>
  <TOGGLEBUTTON name="optStyleMusic" id="11ec9f92fae59908" memberName="optStyleMusic"
                virtualName="" explicitFocusOrder="0" pos="72 632 80 24" buttonText="Music"
                connectedEdges="0" needsCallback="1" radioGroupId="3" state="1"/>
  <TOGGLEBUTTON name="optStyleSFX" id="c2b3fa71cbf88894" memberName="optStyleSFX"
                virtualName="" explicitFocusOrder="0" pos="152 632 136 24" buttonText="Technical / SFX"
                connectedEdges="0" needsCallback="1" radioGroupId="3" state="0"/>
</JUCER_COMPONENT>

END_JUCER_METADATA
*/
#endif


//[EndFile] You can add extra defines here...
//[/EndFile]
