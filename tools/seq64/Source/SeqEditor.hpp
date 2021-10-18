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

#pragma once

//[Headers]     -- You can add your own extra header files here --
/*
 * ============================================================================
 *
 * SeqEditor.hpp
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
#include "Common.hpp"
#include "SeqFile.hpp"
#include "TextListBox.hpp"
#include "SeqABIEditor.hpp"

#include <thread>
//[/Headers]



//==============================================================================
/**
                                                                    //[Comments]
    An auto-generated component, created by the Projucer.

    Describe your class and how it works here!
                                                                    //[/Comments]
*/
class SeqEditor  : public Component,
                   private TextListBox::Listener,
                   private Timer,
                   public juce::Button::Listener
{
public:
    //==============================================================================
    SeqEditor ();
    ~SeqEditor() override;

    //==============================================================================
    //[UserMethods]     -- You can add your own custom methods in this section.
    //[/UserMethods]

    void paint (juce::Graphics& g) override;
    void resized() override;
    void buttonClicked (juce::Button* buttonThatWasClicked) override;



private:
    //[UserVariables]   -- You can add your own custom variables in this section.
    void rowSelected(TextListBox* parent, int row) override;
    void timerCallback() override;

    ValueTree getABI();
    bool checkSeqPresence(bool shouldExist);

    template<class Fn, class... Args> void startSeqOperation(String desc, Fn&& fn, Args... args);
    template<class Fn, class... Args> void doSeqOperation(Fn&& fn, Args... args);

    std::unique_ptr<SeqFile> seq;
    std::unique_ptr<std::thread> opthread;
    int opres;
    String opdesc;
    std::atomic_flag opnotdone;

    std::unique_ptr<SeqABIEditor> abieditor;

    std::unique_ptr<TextListBox> lstABI;
    //[/UserVariables]

    //==============================================================================
    std::unique_ptr<juce::GroupComponent> grpMusDialect;
    std::unique_ptr<juce::ToggleButton> optMusCommunity;
    std::unique_ptr<juce::ToggleButton> optMusCanon;
    std::unique_ptr<juce::ToggleButton> optMusCanonOld;
    std::unique_ptr<juce::GroupComponent> grpImportMIDI;
    std::unique_ptr<juce::ToggleButton> chkSmartLoop;
    std::unique_ptr<juce::GroupComponent> grpOptimizer;
    std::unique_ptr<juce::ToggleButton> chkUseCalls;
    std::unique_ptr<juce::TextEditor> txtMasterVol;
    std::unique_ptr<juce::Label> lblMasterVol;
    std::unique_ptr<juce::ToggleButton> chkUseLoops;
    std::unique_ptr<juce::TextEditor> txtMergeVel;
    std::unique_ptr<juce::Label> lblMergeVel;
    std::unique_ptr<juce::TextEditor> txtMergeGates;
    std::unique_ptr<juce::Label> lblMergeGates;
    std::unique_ptr<juce::TextEditor> txtMergeCCs;
    std::unique_ptr<juce::Label> lblMergeCCs;
    std::unique_ptr<juce::TextEditor> txtQuantVolPan;
    std::unique_ptr<juce::Label> lblQuantVolPan;
    std::unique_ptr<juce::TextEditor> txtQuantPitch;
    std::unique_ptr<juce::Label> lblQuantPitch;
    std::unique_ptr<juce::TextEditor> txtQuantOther;
    std::unique_ptr<juce::Label> lblQuantOther;
    std::unique_ptr<juce::Label> lblMerge;
    std::unique_ptr<juce::Label> lblQuant;
    std::unique_ptr<juce::GroupComponent> grpExportMIDI;
    std::unique_ptr<juce::ToggleButton> optInstOrig;
    std::unique_ptr<juce::ToggleButton> optInstGM10;
    std::unique_ptr<juce::ToggleButton> optInstGMMulti;
    std::unique_ptr<juce::Label> lblPPQN;
    std::unique_ptr<juce::TextEditor> txtPPQN;
    std::unique_ptr<juce::TextEditor> txtSeq;
    std::unique_ptr<juce::Label> lblInternal;
    std::unique_ptr<juce::Label> lblDebug;
    std::unique_ptr<juce::TextEditor> txtDebug;
    std::unique_ptr<juce::GroupComponent> grpABI;
    std::unique_ptr<juce::TextButton> btnEditABI;
    std::unique_ptr<juce::ToggleButton> chkRel;
    std::unique_ptr<juce::TextButton> btnImportMIDI;
    std::unique_ptr<juce::TextButton> btnExportMIDI;
    std::unique_ptr<juce::TextButton> btnImportMus;
    std::unique_ptr<juce::TextButton> btnExportMus;
    std::unique_ptr<juce::TextButton> btnImportCom;
    std::unique_ptr<juce::TextButton> btnExportCom;
    std::unique_ptr<juce::Label> lblMuteBhv;
    std::unique_ptr<juce::TextEditor> txtMuteBhv;
    std::unique_ptr<juce::Label> lblMuteScale;
    std::unique_ptr<juce::TextEditor> txtMuteScale;
    std::unique_ptr<juce::ToggleButton> chkPref;
    std::unique_ptr<juce::ToggleButton> chkCallOnlyLyr;
    std::unique_ptr<juce::Label> lblCallOnlyLy;
    std::unique_ptr<juce::Label> lblStyle;
    std::unique_ptr<juce::ToggleButton> optStyleMusic;
    std::unique_ptr<juce::ToggleButton> optStyleSFX;
    juce::Path internalPath1;
    juce::Path internalPath2;
    juce::Path internalPath3;
    juce::Path internalPath4;
    juce::Path internalPath5;
    juce::Path internalPath6;


    //==============================================================================
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (SeqEditor)
};

//[EndFile] You can add extra defines here...
//[/EndFile]

