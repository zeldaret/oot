/*
 * ============================================================================
 *
 * MainGUI.cpp
 * Outer application and GUI window.
 * 
 * From seq64 - Sequenced music editor for first-party N64 games
 * Copyright (C) 2014-2021 Sauraen
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
#include "SeqEditor.hpp"
#include "CommandLine.hpp"

class seq64Application : public JUCEApplication
{
public:
    seq64Application() {}

    const String getApplicationName() override       { return "SEQ64 V2.1"; }
    const String getApplicationVersion() override    { return ProjectInfo::versionString; }
    bool moreThanOneInstanceAllowed() override       { return true; }

    void initialise (const String& commandLine) override {
        if(!commandLine.isEmpty()){
            StringArray args = StringArray::fromTokens(commandLine, true);
            args.insert(0, "seq64_gui"); //Arg 0 is the program name and is ignored
            seq64_cli(args);
            quit();
        }else{
            mainWindow.reset (new MainWindow (getApplicationName()));
        }
    }
    void shutdown() override {
        mainWindow = nullptr;
    }
    void systemRequestedQuit() override {
        quit();
    }
    void anotherInstanceStarted (const String& commandLine) override {
        ignoreUnused(commandLine);
    }

    class MainWindow : public DocumentWindow
    {
    public:
        MainWindow(String name) : DocumentWindow (name,
            juce::Desktop::getInstance().getDefaultLookAndFeel().findColour (juce::ResizableWindow::backgroundColourId),
            DocumentWindow::allButtons)
        {
            setUsingNativeTitleBar (true);
            setContentOwned (new SeqEditor(), true);
            setResizable (true, true);
            centreWithSize (getWidth(), getHeight());
            setVisible (true);
        }

        void closeButtonPressed() override {
            JUCEApplication::getInstance()->systemRequestedQuit();
        }
    private:
        JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (MainWindow)
    };

private:
    std::unique_ptr<MainWindow> mainWindow;
};

START_JUCE_APPLICATION (seq64Application)
