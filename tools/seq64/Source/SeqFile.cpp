/*
 * ============================================================================
 *
 * SeqFile.cpp
 * Class to hold/import/export a Nintendo 64 Music Macro Language (Audioseq) 
 * format sequence file
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


#include "SeqFile.hpp"

#include <ctime>

Identifier SeqFile::idName("name");
Identifier SeqFile::idCName("cname");
Identifier SeqFile::idOName("oname");
Identifier SeqFile::idCmd("cmd");
Identifier SeqFile::idCmdEnd("cmdend");
Identifier SeqFile::idAction("action");
Identifier SeqFile::idMeaning("meaning");
Identifier SeqFile::idValue("value");
Identifier SeqFile::idCC("cc");
Identifier SeqFile::idLength("length");
Identifier SeqFile::idAddress("address");
Identifier SeqFile::idAddressEnd("address_end");
Identifier SeqFile::idDataSrc("datasrc");
Identifier SeqFile::idDataLen("datalen");
Identifier SeqFile::idDataForce2("dataforce2");
Identifier SeqFile::idDataAddr("dataaddr");
//Identifier SeqFile::idDataActualLen("dataactuallen");
Identifier SeqFile::idSType("stype");
Identifier SeqFile::idValidInSeq("validinseq");
Identifier SeqFile::idValidInChn("validinchn");
Identifier SeqFile::idValidInTrk("validintrk");
Identifier SeqFile::idChannel("channel");
Identifier SeqFile::idLayer("layer");
Identifier SeqFile::idTSection("tsection");
Identifier SeqFile::idSection("section");
Identifier SeqFile::idSectionName("sectionname");
Identifier SeqFile::idOldSectionIdx("oldsectionidx");
Identifier SeqFile::idSecDone("secdone");
Identifier SeqFile::idTicks("ticks");
Identifier SeqFile::idLastDelay("lastdelay");
Identifier SeqFile::idLabelName("labelname");
Identifier SeqFile::idLabelNameAuto("labelnameauto");
Identifier SeqFile::idSrcCmdRef("srccmdref");
Identifier SeqFile::idHash("hash");
Identifier SeqFile::idTargetSection("targetsection");
Identifier SeqFile::idTargetHash("targethash");
Identifier SeqFile::idTargetCmdByte("targetcmdbyte");
Identifier SeqFile::idWillDrop("willdrop");
Identifier SeqFile::idDynTableSType("dyntablestype");
Identifier SeqFile::idDynTableDynSType("dyntabledynstype");
//Identifier SeqFile::idCurDynTableSec("curdyntablesec");
Identifier SeqFile::idMessage("message");
Identifier SeqFile::idRecurVisited("recurvisited");
Identifier SeqFile::idQuestionableSection("questionablesection");

const int SeqFile::max_layers = 4;

SeqFile::SeqFile(ValueTree abi_) : abi(abi_), tsecnames_generated(false){
    
}

SeqFile::~SeqFile(){
    
}

bool SeqFile::isValidCC(int cc){
    return !(cc < 0 || cc > 129
            || cc == 6 || cc == 32 || cc == 38
            || (cc >= 96 && cc <= 101) || (cc >= 120 && cc <= 127));
}

String SeqFile::getInternalString(){
    if(!structure.isValid()) return "(No sequence loaded)";
    String ret;
    for(int i=0; i<structure.getNumChildren(); ++i){
        ValueTree section = structure.getChild(i);
        if(section.hasProperty(idLabelName)){
            ret += "[" + section.getProperty(idLabelName).toString() + "] ";
        }
        ret += "Section " + String(i);
        ret += ": " + section.getType() + " (@" + hex((uint16_t)(int)section.getProperty(idAddress, -1)) + ")";
        if((int)section.getProperty(idChannel, -1) >= 0){
            ret += ", chn " + section.getProperty(idChannel, -1).toString();
        }
        if((int)section.getProperty(idLayer, -1) >= 0){
            ret += ", layer " + section.getProperty(idLayer, -1).toString();
        }
        ret += "\n";
        if(section.hasProperty(idMessage)){
            ret += "  Message: " + section.getProperty(idMessage).toString() + "\n";
            continue;
        }
        for(int j=0; j<section.getNumChildren(); ++j){
            ValueTree cmd = section.getChild(j);
            String cmddesc = cmd.getProperty(idName, "None").toString();
            String cmdaction = cmd.getProperty(idAction, "Error").toString();
            if(cmddesc == "None") cmddesc = cmdaction;
            if(cmd.hasProperty(idTargetSection)){
                cmddesc += " to Sec " + cmd.getProperty(idTargetSection, "Error").toString();
            }
            if(cmd.hasProperty(idTargetHash)){
                cmddesc += " to hash " + cmd.getProperty(idTargetHash, "Error").toString();
            }
            for(int k=0; k<cmd.getNumChildren(); ++k){
                ValueTree param = cmd.getChild(k);
                String parammeaning = param.getProperty(idMeaning, "Error").toString();
                if(parammeaning == "Absolute Address" || parammeaning == "Relative Address"){
                    continue;
                }
                String paramdesc = param.getProperty(idName, "None").toString();
                if(paramdesc == "None") paramdesc = parammeaning;
                cmddesc += ", " + paramdesc + " " + hexauto((int)param.getProperty(idValue, 0x1337));
            }
            if(cmd.hasProperty(idLabelName)) cmddesc = "[" + cmd.getProperty(idLabelName).toString() + "] " + cmddesc;
            //if(cmd.hasProperty(idHash)) cmddesc = cmd.getProperty(idHash).toString() + " " + cmddesc;
            if(cmd.hasProperty(idAddress)) cmddesc = hex((int)cmd.getProperty(idAddress),16) + " " + cmddesc;
            ret += "  " + cmddesc;
            ret += "\n";
        }
    }
    return ret;
}

StringArray SeqFile::getAvailABIs(){
    StringArray ret;
    File abifolder = findFile("abi/");
    if(!abifolder.isDirectory()){
        ret.add("Could not find abi folder!");
        return ret;
    }
    Array<File> xmlfiles = abifolder.findChildFiles(File::findFiles, false, "*.xml");
    if(xmlfiles.size() == 0){
        ret.add("No abi XML files in abi folder!");
    }
    for(int i=0; i<xmlfiles.size(); ++i){
        ret.add(xmlfiles[i].getFileNameWithoutExtension());
    }
    return ret;
}
ValueTree SeqFile::loadABI(String name){
    File abifile = findFile("abi/" + name + ".xml");
    if(!abifile.existsAsFile()){
        std::cout << "Could not find file " + abifile.getFullPathName() + "!";
        return ValueTree();
    }
    std::unique_ptr<XmlElement> xml = parseXML(abifile);
    if(!xml){
        std::cout << "Error parsing XML of " + abifile.getFullPathName() + "!";
        return ValueTree();
    }
    return ValueTree::fromXml(*xml);
}
bool SeqFile::saveABI(String name, ValueTree abi_){
    File abifile = findFile("abi/" + name + ".xml");
    if(!abifile.existsAsFile()){
        std::cout << "Could not find file " + abifile.getFullPathName() + "!";
        return false;
    }
    std::unique_ptr<XmlElement> xml = abi_.createXml();
    if(!xml){
        std::cout << "Error creating XML for currently loaded ABI!";
        return false;
    }
    FileOutputStream fos(abifile);
    if(fos.failedToOpen()){
        std::cout << "Couldn't open file " + abifile.getFullPathName() + " for writing!";
        return false;
    }
    fos.setPosition(0);
    fos.truncate();
    xml->writeTo(fos);
    fos.flush();
    return true;
}

void SeqFile::dbgmsg(String s, bool newline){
    const ScopedLock lock(debug_mutex);
    if(newline) s += "\n";
    debug_messages += s;
    std::cout << s;
}
String SeqFile::getDebugOutput(){
    const ScopedLock lock(debug_mutex);
    String ret(debug_messages);
    debug_messages.clear();
    return ret;
}

////////////////////////////////////////////////////////////////////////////////
///////////////////////////// importMIDI functions /////////////////////////////
////////////////////////////////////////////////////////////////////////////////

MidiMessageSequence* SeqFile::ensureSimulMsgsInOrder(MidiMessageSequence &in){
    in.updateMatchedPairs();
    in.sort();
    MidiMessageSequence* out = new MidiMessageSequence();
    MidiMessage* msg;
    //In any group of commands happening at the same time, the events should be
    //in this order: Note Offs, other messages (CCs, etc.), program changes, Note Ons
    while(in.getNumEvents() > 0){
        double ts = in.getEventPointer(0)->message.getTimeStamp();
        bool addme;
        for(int phase=0; phase<=3; ++phase){
            for(int i=0; i<in.getNumEvents(); ++i){
                msg = &(in.getEventPointer(i)->message);
                if(msg->getTimeStamp() > ts) break;
                else if(msg->getTimeStamp() < ts){
                    dbgmsg("Consistency error: messages out of order after sorting!");
                    return out;
                }
                switch(phase){
                    case 0: addme = msg->isNoteOff(); break;
                    case 1: addme = (!msg->isNoteOnOrOff() && !msg->isProgramChange()); break;
                    case 2: addme = msg->isProgramChange(); break;
                    case 3: addme = true; break;
                    default: dbgmsg("Bad phase in sorting!"); return out;
                }
                if(addme){
                    out->addEvent(*msg, 0.0);
                    in.deleteEvent(i, false);
                    --i;
                }
            }
        }
    }
    return out;
}

void SeqFile::getCommandRange(ValueTree command, String meaning, int &range_min, int &range_max){
    range_min = range_max = 0;
    if(!command.isValid()) return;
    ValueTree param = command.getChildWithProperty(idMeaning, meaning);
    if(!param.isValid()) return;
    String datasrc = param.getProperty(idDataSrc, "fixed");
    int datalen = param.getProperty(idDataLen, 0);
    if(datasrc == "fixed"){
        range_max = 1 << (datalen << 3); //2^number of bytes
    }else if(datasrc == "variable"){
        range_max = 0x8000;
    }else if(datasrc == "offset"){
        range_max = (int)command.getProperty(idCmdEnd) - (int)command.getProperty(idCmd) + 1;
    }else if(datasrc == "constant"){
        range_min = datalen;
        range_max = datalen+1;
    }
}

int SeqFile::getLargestCommandRange(int stype, String action, String meaning){
    ValueTree test, param, param2;
    ValueTree possibleCmdsList("possiblecmdslist");
    int i, maxrange = 0;
    for(i=0; i<abi.getNumChildren(); i++){
        test = abi.getChild(i);
        if(!isCommandValidIn(test, stype)) continue;
        if(test.getProperty(idAction).toString() != action) continue;
        param = test.getChildWithProperty(idMeaning, meaning);
        if(!param.isValid()) continue;
        int rmin, rmax;
        getCommandRange(test, meaning, rmin, rmax);
        rmax -= rmin;
        if(rmax > maxrange) maxrange = rmax;
    }
    return maxrange;
}

bool SeqFile::isCommandValidIn(ValueTree command, int stype){
    if(!command.isValid()) return false;
    if(stype == 0){
        return command.getProperty(idValidInSeq, false);
    }else if(stype == 1){
        return command.getProperty(idValidInChn, false);
    }else if(stype == 2){
        return command.getProperty(idValidInTrk, false);
    }else{
        return false;
    }
}

ValueTree SeqFile::wantAction(String action, int stype){
    ValueTree ret("wantedcmd");
    ret.setProperty(idAction, action, nullptr);
    ret.setProperty(idSType, stype, nullptr);
    return ret;
}

void SeqFile::wantProperty(ValueTree want, String meaning, int value){
    ValueTree sub("wantedproperty");
    sub.setProperty(idMeaning, meaning, nullptr);
    sub.setProperty(idValue, value, nullptr);
    want.appendChild(sub, nullptr);
}

ValueTree SeqFile::createCommand(ValueTree want, bool warnIfImpossible){
    if(!want.isValid()) return want;
    int stype = want.getProperty(idSType);
    String action = want.getProperty(idAction);
    String meaning;
    ValueTree test, param, param2;
    ValueTree possibleCmdsList("possiblecmdslist");
    bool flag;
    for(int i=0; i<abi.getNumChildren(); i++){
        test = abi.getChild(i);
        if(!isCommandValidIn(test, stype)) continue;
        if(test.getProperty(idAction).toString() != action) continue;
        //See if it has ways to set all the meanings we want
        flag = true;
        for(int j=0; j<want.getNumChildren(); j++){
            meaning = want.getChild(j).getProperty(idMeaning);
            param = test.getChildWithProperty(idMeaning, meaning);
            if(!param.isValid()){
                flag = false;
                break;
            }
            //Check range
            int value = want.getChild(j).getProperty(idValue);
            int rmin, rmax;
            getCommandRange(test, meaning, rmin, rmax);
            if(value < rmin || value >= rmax){
                //dbgmsg("--Looking for " + action + " command, meaning " + meaning 
                //        + ", throwing out due to range " + String(range) + " vs. value " + String(value));
                flag = false;
                break;
            }
        }
        if(flag){
            //This might be the command we're looking for
            test = test.createCopy();
            possibleCmdsList.appendChild(test, nullptr);
        }
    }
    if(possibleCmdsList.getNumChildren() == 0){
        if(warnIfImpossible){
            dbgmsg("No " + action + " command defined in stype " + String(stype) + " with all the needed parameters!");
            for(int j=0; j<want.getNumChildren(); j++){
                dbgmsg("----Want: " + want.getChild(j).getProperty(idMeaning).toString()
                        + " value " + want.getChild(j).getProperty(idValue).toString());
            }
        }
        return ValueTree();
    }
    //Figure out which one would be shortest
    int lowestCmdLen = 100000;
    int lowestCmdIndex = 0;
    int cmdlen, datalen;
    String datasrc;
    for(int i=0; i<possibleCmdsList.getNumChildren(); i++){
        test = possibleCmdsList.getChild(i);
        //Determine length of this command with the given data
        cmdlen = 1;
        for(int j=0; j<test.getNumChildren(); j++){
            param = test.getChild(j);
            datasrc = param.getProperty(idDataSrc, "fixed");
            datalen = param.getProperty(idDataLen, 0);
            param2 = want.getChildWithProperty(idMeaning, param.getProperty(idMeaning));
            int value = param2.isValid() ? (int)param2.getProperty(idValue) : 0;
            if(datasrc == "offset" || datasrc == "constant"){
                //do nothing
            }else if(datasrc == "fixed"){
                cmdlen += datalen;
            }else if(datasrc == "variable"){
                cmdlen += (value >= 0x80) ? 2 : 1;
            }
        }
        if(cmdlen < lowestCmdLen){
            lowestCmdLen = cmdlen;
            lowestCmdIndex = i;
        }
    }
    //Get best one
    test = possibleCmdsList.getChild(lowestCmdIndex);
    //Set all values
    for(int j=0; j<test.getNumChildren(); j++){
        param2 = test.getChild(j);
        param = want.getChildWithProperty(idMeaning, param2.getProperty(idMeaning));
        if(param.isValid()){
            param2.setProperty(idValue, param.getProperty(idValue), nullptr);
        }else{
            param2.setProperty(idValue, 0, nullptr);
        }
    }
    //Hash
    test.setProperty(idHash, Random::getSystemRandom().nextInt(), nullptr);
    return test;
}

void SeqFile::advanceToTimestamp(ValueTree section, int stype, int &cmd, int &t, int newt){
    int maxdelay = getLargestCommandRange(stype, "Delay", "Delay") - 1;
    while(t < newt){
        int dt = std::min(newt - t, maxdelay);
    	ValueTree want = wantAction("Delay", stype);
    	wantProperty(want, "Delay", dt);
    	section.addChild(createCommand(want), cmd, nullptr);
        ++cmd;
        t += dt;
    }
}

int SeqFile::getNewCommandLength(ValueTree command){
    if(!command.isValid()) return 0;
    int cmdlen = 0;
    if((int)command.getProperty(idCmd) >= 0) cmdlen++;
    ValueTree param;
    int p, datalen, value;
    String datasrc;
    for(p=0; p<command.getNumChildren(); p++){
        param = command.getChild(p);
        datasrc = param.getProperty(idDataSrc, "fixed");
        datalen = param.getProperty(idDataLen, 0);
        value = param.getProperty(idValue, 0);
        if(datasrc == "offset" || datasrc == "constant"){
            //do nothing
        }else if(datasrc == "fixed"){
            cmdlen += datalen;
        }else if(datasrc == "variable"){
            cmdlen += (value >= 0x80 || param.hasProperty(idDataForce2)) ? 2 : 1;
        }
    }
    return cmdlen;
}

bool SeqFile::isCloseEnough(ValueTree command1, ValueTree command2, bool allowCCMerge, ValueTree midiopts){
    String action = command1.getProperty(idAction, "No Action1");
    if(action != command2.getProperty(idAction, "No Action2").toString()) return false;
    ValueTree param1, param2;
    if(action == "Delay"){
        param1 = command1.getChildWithProperty(idMeaning, "Delay");
        param2 = command2.getChildWithProperty(idMeaning, "Delay");
        if(!param1.isValid() || !param2.isValid()) return false;
        return ((int)param1.getProperty(idValue, -1234) == (int)param2.getProperty(idValue, -8971));
    }else if(action == "Note"){
        //Compare notes
        param1 = command1.getChildWithProperty(idMeaning, "Note");
        param2 = command2.getChildWithProperty(idMeaning, "Note");
        if(!param1.isValid() || !param2.isValid()) return false;
        if((int)param1.getProperty(idValue, -1234) != (int)param2.getProperty(idValue, -8971)) return false;
        //Compare note lengths / delays
        param1 = command1.getChildWithProperty(idMeaning, "Delay");
        param2 = command2.getChildWithProperty(idMeaning, "Delay");
        if(!param1.isValid() || !param2.isValid()) return false;
        if((int)param1.getProperty(idValue, -1234) != (int)param2.getProperty(idValue, -8971)) return false;
        //Compare velocities
        int delta = midiopts.getProperty("delta_vel", 5);
        param1 = command1.getChildWithProperty(idMeaning, "Velocity");
        param2 = command2.getChildWithProperty(idMeaning, "Velocity");
        if(!param1.isValid() || !param2.isValid()) return false;
        if(abs((int)param1.getProperty(idValue, -1234) 
                - (int)param2.getProperty(idValue, -8971)) > delta) return false;
        //Compare gate lengths
        int v1, v2;
        delta = midiopts.getProperty("delta_gate", 3);
        param1 = command1.getChildWithProperty(idMeaning, "Gate Time");
        param2 = command2.getChildWithProperty(idMeaning, "Gate Time");
        v1 = (param1.isValid()) ? ((int)param1.getProperty(idValue, 0)) : 0;
        v2 = (param2.isValid()) ? ((int)param2.getProperty(idValue, 0)) : 0;
        if(abs(v2 - v1) > delta) return false;
        //Finally
        return true;
    }else if(action == "CC or CC Group"){
        int delta = allowCCMerge ? (int)midiopts.getProperty("delta_cc", 3) : 0;
        if(command1.getNumChildren() != command2.getNumChildren()) return false;
        for(int i=0; i<command1.getNumChildren(); ++i){
            param1 = command1.getChild(i);
            if(param1.getProperty(idMeaning).toString() != "CC") continue;
            param2 = command2.getChild(i);
            if((int)param1.getProperty(idCC, -1) != (int)param2.getProperty(idCC, -2)) return false;
            if(abs((int)param1.getProperty(idValue, -1234) 
                - (int)param2.getProperty(idValue, -8971)) > delta) return false;
        }
        return true;
    }else if(action == "Mute Behavior" || action == "Mute Scale"
            || action == "Master Volume" || action == "Tempo" 
            || action == "Chn Transpose" || action == "Layer Transpose"){
        param1 = command1.getChildWithProperty(idMeaning, "Value");
        param2 = command2.getChildWithProperty(idMeaning, "Value");
        if(!param1.isValid() || !param2.isValid()) return false;
        return ((int)param1.getProperty(idValue, -1234) == (int)param2.getProperty(idValue, -8971));
    }else if(action == "Enable Long Notes"){
        return true;
    }else{
        return false;
    }
}

int SeqFile::getTotalSectionTime(ValueTree section){
    int totaltime = 0, t, loopmult = 1;
    for(int cmd=0; cmd<section.getNumChildren(); ++cmd){
        ValueTree command = section.getChild(cmd);
        String action = command.getProperty(idAction, "No Action");
        t = 0;
        if(action == "Call"){
            int s = command.getProperty(idTargetSection, -1);
            if(s < 0 || s >= structure.getNumChildren()){
                dbgmsg("getTotalSectionTime: Call to invalid target section!");
                importresult |= 2;
                continue;
            }
            t = getTotalSectionTime(structure.getChild(s));
        }else if(action == "Loop Start"){
            ValueTree param = command.getChildWithProperty(idMeaning, "Loop Count");
            if(!param.isValid()){
                loopmult = 0;
            }else{
                loopmult = param.getProperty(idValue, 0);
            }
            if(loopmult < 2){
                dbgmsg("Loop Start with count < 2!");
                importresult |= 2;
            }
        }else if(action == "Loop End"){
            loopmult = 1;
        }else if(action == "Delay"){
            ValueTree param = command.getChildWithProperty(idMeaning, "Delay");
            if(param.isValid()){
                t = param.getProperty(idValue, 0);
            }
            if(t == 0){
                dbgmsg("Delay command without delay parameter!");
                importresult |= 2;
            }
        }
        totaltime += t * loopmult;
    }
    return totaltime;
}

void SeqFile::deleteSection(int sectodelete){
    ValueTree dsection = structure.getChild(sectodelete);
    /*
    dbgmsg("Deleting empty section " + String(sectodelete) 
        + " stype=" + dsection.getProperty(idSType, -1).toString()
        + " channel=" + dsection.getProperty(idChannel, -1).toString()
        + " layer=" + dsection.getProperty(idLayer, -1).toString()
        + " tsection=" + dsection.getProperty(idTSection, -1).toString());
    */
    dbgmsg("*", false);
    int s, c, t;
    ValueTree section, command;
    for(s=0; s<structure.getNumChildren(); ++s){
        section = structure.getChild(s);
        for(c=0; c<section.getNumChildren(); ++c){
            command = section.getChild(c);
            t = command.getProperty(idTargetSection, -1);
            if(t == sectodelete){
                //dbgmsg("--Removing command " + command.getProperty(idAction, "No Action").toString()
                //    + " from section " + String(s) + " stype " + section.getProperty(idSType, -1).toString());
                section.removeChild(command, nullptr);
                --c;
            }else if(t > sectodelete){
                command.setProperty(idTargetSection, t-1, nullptr);
            }
        }
    }
    structure.removeChild(sectodelete, nullptr);
}

void SeqFile::getExtendedCC(MidiMessage msg, int &cc, int &value){
    cc = -1;
    value = 0;
    if(msg.isController()){
        cc = msg.getControllerNumber();
        value = msg.getControllerValue();
    }else if(msg.isProgramChange()){
        cc = 129;
        value = msg.getProgramChangeNumber();
    }else if(msg.isPitchWheel()){
        cc = 128;
        value = msg.getPitchWheelValue();
        value -= 0x2000;
        value >>= 6;
        value &= 0x000000FF;
    }
}

void SeqFile::prefSetBool(ValueTree midiopts, Identifier opt, String value, String prefline){
    bool truthy = value.equalsIgnoreCase("on") || value == "1" || value.equalsIgnoreCase("true") || value.equalsIgnoreCase("yes");
    bool falsey = value.equalsIgnoreCase("off") || value == "1" || value.equalsIgnoreCase("false") || value.equalsIgnoreCase("no");
    if(truthy) midiopts.setProperty(opt, true, nullptr);
    else if(falsey) midiopts.setProperty(opt, false, nullptr);
    else{
        dbgmsg(".pref: Invalid bool value: " + prefline);
        importresult |= 1;
    }
}
void SeqFile::prefSetInt(ValueTree midiopts, Identifier opt, int max, String value, String prefline){
    int v = value.getIntValue();
    if(isInt(value) && v >= 0 && v <= max){
        midiopts.setProperty(opt, v, nullptr);
    }else{
        dbgmsg(".pref: Invalid " + opt + " value " + value + ": " + prefline);
        importresult |= 1;
    }
}
void SeqFile::prefSetHex(ValueTree midiopts, Identifier opt, int max, String value, String prefline){
    if(value.startsWithIgnoreCase("0x")) value = value.substring(2);
    else if(value.startsWith("$")) value = value.substring(1);
    int v = value.getHexValue32();
    if(isHex(value) && v >= 0 && v <= max){
        midiopts.setProperty(opt, v, nullptr);
    }else{
        dbgmsg(".pref: Invalid " + opt + " value " + value + ": " + prefline);
        importresult |= 1;
    }
}

////////////////////////////////////////////////////////////////////////////////
///////////////////////////// importMIDI objects ///////////////////////////////
////////////////////////////////////////////////////////////////////////////////

class LayerState{
public:
    LayerState(int historylen) : histl(historylen) { clear(); }
    ~LayerState() {}
    bool isInUse(){ return data[0] >= 0; }
    int curNote(){ return data[0]; }
    void writeNote(int newnote){
        if(data[0] < 0){
            data.set(0, newnote);
        }else{
            data.remove(data.size() - 1);
            data.insert(0, newnote);
        }
    }
    void clear(){
        data.clear();
        for(int i=0; i<histl; ++i){
            data.add(-1);
        }
    }
    float mse(int newnote){
        if(data[0] >= 0) return 10000000000.0f;
        float m = 0.0f;
        int deltasq;
        const int unusedpenalty = 40000;
        for(int i=1; i<histl; ++i){
            deltasq = (data[i] < 0) ? unusedpenalty : ((data[i] - newnote) * (data[i] - newnote));
            if(deltasq == 0) return m;
            m += (float)deltasq / (float)(i);
        }
        return m;
    }
private:
    Array<int> data;
    int histl;
};

struct CCTracker{
    CCTracker(){
        q_time = lasttime = q_amp = lastvalue = 0;
        lastcmd = ValueTree();
        warnedUnused = false;
    }
    int q_time, lasttime, q_amp, lastvalue;
    ValueTree lastcmd;
    bool warnedUnused;
};

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////// importMIDI //////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

int SeqFile::importMIDI(File midifile, ValueTree midiopts){
    if(!midifile.existsAsFile()){
        dbgmsg("File " + midifile.getFullPathName() + " does not exist!");
        return -1;
    }
    FileInputStream fis(midifile);
    MidiFile mfile;
    mfile.readFrom(fis);
    seqname = midifile.getFileNameWithoutExtension();
    //Read pref
    do{
        if(!(bool)midiopts.getProperty("pref")) break;
        File preffile = midifile.getSiblingFile(seqname + ".pref");
        if(!preffile.existsAsFile()){
            dbgmsg("Requested reading .pref file, but " + preffile.getFullPathName() + " does not exist!");
            importresult |= 1;
            break;
        }
        std::vector<String> mergequantcmds{"delta_vel", "delta_gate", "delta_cc",
            "q_volpan_amp", "q_pitch_amp", "q_other_amp"};
        for(String s : mergequantcmds) midiopts.setProperty(s, 0, nullptr);
        FileInputStream preffis(preffile);
        while(!preffis.isExhausted()){
            String prefline = preffis.readNextLine().trim();
            if(prefline.startsWith(";") || prefline.isEmpty()) continue;
            if(prefline.startsWith("END")) break;
            String key = prefline.upToFirstOccurrenceOf(":", false, false).trim();
            String value = prefline.fromFirstOccurrenceOf(":", false, false).trim();
            if(key.isEmpty() || value.isEmpty()){
                dbgmsg("Invalid syntax in .pref file: " + prefline);
                importresult |= 1;
                continue;
            }
            if(key.equalsIgnoreCase("notemode")){
                if(!value.equalsIgnoreCase("b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b")){
                    dbgmsg(".pref: Unsupported notemode (non large notes): " + value);
                    importresult |= 1;
                }
            }else if(key.equalsIgnoreCase("backupmake") || key.equalsIgnoreCase("bar_write") 
                    || key.equalsIgnoreCase("forthed_noteon")){
                dbgmsg(".pref: seq64 does not support canon \"" + key + "\" pref command");
            }else if(key.equalsIgnoreCase("initwait_cut") || key.equalsIgnoreCase("cutdelay")){
                prefSetBool(midiopts, "cutdelay", value, prefline);
                //TODO actually support this
            }else if(key.equalsIgnoreCase("mus_timebase")){
                if(value != "48"){
                    dbgmsg(".pref: Incorrect MIDI timebase " + value + "!");
                    return 2;
                }
            }else if(key.equalsIgnoreCase("total_poli")){
                dbgmsg(".pref: info: requested polyphony " + value);
            }else if(key.equalsIgnoreCase("groop_volume") || key.equalsIgnoreCase("mastervol")){
                prefSetInt(midiopts, "mastervol", 255, value, prefline);
            }else if(key.equalsIgnoreCase("init_dummywait") || key.equalsIgnoreCase("extradelay")){
                prefSetInt(midiopts, "extradelay", 0x7FFF, value, prefline);
                //TODO actually support this
            }else if(key.equalsIgnoreCase("pause_set") || key.equalsIgnoreCase("mutebhv")){
                value.replaceCharacter('\t', ' ');
                String bhv = value.upToFirstOccurrenceOf(" ", false, false).trim();
                String scale = value.fromFirstOccurrenceOf(" ", false, false).trim();
                if(bhv.equalsIgnoreCase("stop") || bhv.equalsIgnoreCase("SEQSTOP")){
                    midiopts.setProperty("mutebhv", 0x80, nullptr);
                }else if(bhv.equalsIgnoreCase("VOICECUT")){
                    midiopts.setProperty("mutebhv", 0x40, nullptr);
                }else if(bhv.equalsIgnoreCase("gaindown") || bhv.equalsIgnoreCase("VOLDOWN")){
                    midiopts.setProperty("mutebhv", 0x20, nullptr);
                }else if(bhv.equalsIgnoreCase("ENTRYOFF")){
                    midiopts.setProperty("mutebhv", 0x10, nullptr);
                }else if(bhv.equalsIgnoreCase("FREEZE")){
                    midiopts.setProperty("mutebhv", 0x08, nullptr);
                }else{
                    prefSetHex(midiopts, "mutebhv", 255, bhv, prefline);
                }
                if(scale.isEmpty()){
                    dbgmsg(".pref: Missing mute scale: " + prefline);
                    importresult |= 1;
                }else{
                    prefSetInt(midiopts, "mutescale", 255, scale, prefline);
                }
            }else if(key.equalsIgnoreCase("compress")){
                midiopts.setProperty("callonlylayer", true, nullptr);
                midiopts.setProperty("useloops", false, nullptr);
                if(value == "0"){
                    midiopts.setProperty("usecalls", false, nullptr);
                }else if(value == "1"){
                    midiopts.setProperty("usecalls", true, nullptr);
                }else{
                    dbgmsg(".pref: Unknown compress setting: " + value);
                    importresult |= 1;
                }
            }else{
                std::vector<String> boolparams{"smartloop", "reladdr", 
                    "usecalls", "callonlylayer", "useloops"};
                bool done = false;
                for(String s : boolparams){
                    if(key.equalsIgnoreCase(s)){
                        prefSetBool(midiopts, s, value, prefline);
                        done = true;
                        break;
                    }
                }
                if(done) continue;
                for(String s : mergequantcmds){
                    if(key.equalsIgnoreCase(s)){
                        prefSetInt(midiopts, s, 20, value, prefline);
                        done = true;
                        break;
                    }
                }
                if(done) continue;
                dbgmsg(".pref: Unknown command: " + prefline);
                importresult |= 1;
            }
        }
    }while(false);
    //
    dbgmsg("IMPORTING MIDI FILE");
    importresult = 0;
    bool reladdr = (bool)midiopts.getProperty("reladdr", false);
    const int midi_basenote = 21;
    MidiMessage msg;
    MidiMessage* msgptr;
    int layer;
    int timestamp = 0;
    //Reorganize
    dbgmsg("Reorganizing MIDI file into master track and tracks for each channel...");
    int master_ppqn = mfile.getTimeFormat();
    if(master_ppqn <= 0){
        dbgmsg("MIDI files with SMPTE time format are not supported, only PPQN format!");
        importresult = 2;
        return importresult;
    }else{
        dbgmsg("Converting " + String(master_ppqn) + " to 48 ppqn");
    }
    double ticks_multiplier = 48.0 / (double)master_ppqn;
    //Check for extremely short notes
    for(int track=0; track<mfile.getNumTracks(); track++){
        MidiMessageSequence trk(*mfile.getTrack(track));
        trk.updateMatchedPairs();
        for(int i=0; i<trk.getNumEvents(); ++i){
            msgptr = &trk.getEventPointer(i)->message;
            if(msgptr->isNoteOn()){
                if((trk.getTimeOfMatchingKeyUp(i) - msgptr->getTimeStamp()) 
                        * ticks_multiplier < 1.0){
                    dbgmsg("Warning, extremely short note (pitch " 
                        + String(msgptr->getNoteNumber()) + ", chn "
                        + String(msgptr->getChannel()) + ", quarter note ~" 
                        + String(msgptr->getTimeStamp() * ticks_multiplier / 48.0)
                        + "), may be dropped or corrupt nearby note ons/offs!");
                }
            }
        }
    }
    //Put all events into master track
    double last_timestampd = mfile.getLastTimestamp();
    std::unique_ptr<MidiMessageSequence> mastertrack;
    mastertrack.reset(new MidiMessageSequence());
    for(int track=0; track<mfile.getNumTracks(); track++){
        mastertrack->addSequence(*mfile.getTrack(track), 0.0, 0.0, last_timestampd + 1.0);
        mastertrack->updateMatchedPairs();
    }
    //Scale all events to N64 PPQN
    for(int m=mastertrack->getNumEvents()-1; m>=0; m--){
        msgptr = &mastertrack->getEventPointer(m)->message;
        msgptr->setTimeStamp(msgptr->getTimeStamp() * ticks_multiplier);
    }
    //Ensure events are propertly in order
    mastertrack.reset(ensureSimulMsgsInOrder(*mastertrack));
    //Get new last timestamp
    last_timestampd *= ticks_multiplier;
    int last_timestamp = (int)(last_timestampd);
    dbgmsg("Last timestamp t" + String(last_timestamp) + ", i.e. " + String(last_timestamp / 48)
            + " beats or " + String(last_timestamp / 192) + " measures 4/4");
    //Put channel events into chantracks
    OwnedArray<MidiMessageSequence> chantracks;
    for(int channel=0; channel<16; channel++){
        chantracks.add(new MidiMessageSequence());
        mastertrack->extractMidiChannelMessages(channel+1, *chantracks[channel], false);
        mastertrack->deleteMidiChannelMessages(channel+1);
        mastertrack->updateMatchedPairs();
        chantracks[channel]->updateMatchedPairs();
    }
    //Find sections
    dbgmsg("Finding sections...");
    Array<int> tsectimes;
    tsectimes.add(0);
    tsecnames.clear();
    tsecnames.add("start");
    String metatext;
    int metatype;
    for(int m=0; m<mastertrack->getNumEvents(); m++){
        msg = mastertrack->getEventPointer(m)->message;
        if(!msg.isTextMetaEvent()) continue;
        metatext = msg.getTextFromTextMetaEvent();
        metatype = msg.getMetaEventType();
        if(metatype == 0x06){
            if(!metatext.startsWithIgnoreCase("Section") &&
                !metatext.startsWithIgnoreCase("loop")) continue;
        }else if(metatype == 0x01){
            if(!metatext.startsWithIgnoreCase("block:")) continue;
        }
        timestamp = msg.getTimeStamp();
        if(tsectimes[tsectimes.size()-1] != timestamp){
            tsectimes.add(msg.getTimeStamp());
            tsecnames.add("blahblahwillbeoverwritten");
        }
        if(metatext.startsWithIgnoreCase("Section")){
            metatext = "tsec" + String(tsectimes.size()-1);
        }else if(metatext.startsWithIgnoreCase("block:")){
            metatext = metatext.substring(6);
        }
        tsecnames.set(tsectimes.size()-1, metatext);
    }
    if(tsectimes.size() != tsecnames.size()){
        dbgmsg("tsections internal consistency error!");
        return 2;
    }
    if(tsectimes.size() <= 1){
        dbgmsg("MIDI file had no sections (blocks) specified.");
    }
    //See if there are any empty channels (i.e. with no note ons)
    dbgmsg("Empty channels: ", false);
    Array<int> channelsused;
    uint16_t chanBitfield = 0;
    for(int channel=0; channel<16; channel++){
        channelsused.add(-1);
        for(int m=0; m<chantracks[channel]->getNumEvents(); m++){
            msg = chantracks[channel]->getEventPointer(m)->message;
            if(msg.isNoteOn()){
                channelsused.set(channel, channel);
                break;
            }
        }
        chanBitfield >>= 1;
        if(channelsused[channel] < 0){
            dbgmsg(String(channel) + ", ", false);
        }else{
            chanBitfield |= 0x8000;
        }
    }
    dbgmsg("[end]");
    //Figure out notelayers
    MidiMessageSequence* trk;
    MidiMessageSequence* layertrk;
    dbgmsg("Assigning notes to notelayers...");
    OwnedArray<MidiMessageSequence> layertracks;
    for(int channel=0; channel<16; channel++){
        for(layer=0; layer<max_layers; layer++){
            layertracks.add(new MidiMessageSequence());
        }
    }
    bool too_many_notes;
    OwnedArray<LayerState> ls;
    const int ls_history = 4;
    for(layer=0; layer<max_layers; layer++){
        ls.add(new LayerState(ls_history));
    }
    int sec;
    int bestlayer;
    float bestlayermse, thislayermse;
    for(int channel=0; channel<16; channel++){
        trk = chantracks[channel];
        if(channelsused[channel] < 0) continue;
        too_many_notes = false;
        sec = -1;
        for(int m=0; m<trk->getNumEvents(); m++){
            msg = trk->getEventPointer(m)->message;
            //See what section we're in, and clear LayerStates if it's a new section
            int i;
            for(i=sec; i<tsectimes.size()-1; ++i){
                if(tsectimes[i+1] > msg.getTimeStamp() ||
                        (tsectimes[i+1] == msg.getTimeStamp() && msg.isNoteOff())){
                    //We haven't moved to that section yet
                    break;
                }
            }
            if(sec != i){
                sec = i;
                //Clear layer state since we're in a new section
                for(layer=0; layer<max_layers; layer++){
                    if(ls[layer]->isInUse()){
                        //TODO test this, see if it actually works correctly
                        dbgmsg("Section boundary (e.g. loop point) in the middle of a note, note "
                            + String(ls[layer]->curNote()) + " channel " + String(channel) + "! Cutting off the note!");
                        int j;
                        for(j=m+1; j<trk->getNumEvents(); ++j){
                            MidiMessage msg2 = trk->getEventPointer(j)->message;
                            if(msg2.isNoteOff() && ls[layer]->curNote() == msg2.getNoteNumber()){
                                layertracks[(max_layers*channel)+layer]->addEvent(msg2);
                                trk->deleteEvent(j, false);
                                j = -2;
                                break;
                            }
                        }
                        if(j >= 0){
                            dbgmsg("Trying to fix section boundary in middle of note failed, broken sequence!");
                        }
                    }
                    ls[layer]->clear();
                }
            }
            //Assign each note on/off pair to note layer
            if(msg.isNoteOn()){
                //Check for duplicate
                for(layer=0; layer<max_layers; layer++){
                    if(ls[layer]->curNote() == msg.getNoteNumber()){
                        dbgmsg("Duplicate note on in chan " + String(channel) + " t= " 
                                + String(msg.getTimeStamp()) + ", ignoring");
                        importresult |= 1;
                        layer = -2;
                        break;
                    }
                }
                if(layer < 0) continue;
                //Find best spot to put note
                bestlayermse = 10000000000.0f;
                bestlayer = -1;
                for(layer=0; layer<max_layers; ++layer){
                    if(ls[layer]->isInUse()) continue;
                    //Calculate the weighted mean-squared error between the new note and the layer's history
                    thislayermse = ls[layer]->mse(msg.getNoteNumber());
                    if(thislayermse < bestlayermse){
                        bestlayer = layer;
                        bestlayermse = thislayermse;
                    }
                }
                if(bestlayer < 0){
                    //No layer was free
                    if(!too_many_notes){
                        dbgmsg("Channel " + String(channel) + " has more than " + String(max_layers) 
                                + " notes on at a time (at t=" + String(msg.getTimeStamp()) + ")!");
                        too_many_notes = true;
                        importresult |= 1;
                    }
                }else{
                    //We got a layer to assign it to
                    layertracks[(max_layers*channel)+bestlayer]->addEvent(msg);
                    ls[bestlayer]->writeNote(msg.getNoteNumber());
                }
            }else if(msg.isNoteOff()){
                //Check for existing note
                for(layer=0; layer<max_layers; layer++){
                    if(ls[layer]->curNote() == msg.getNoteNumber()){
                        layertracks[(max_layers*channel)+layer]->addEvent(msg);
                        ls[layer]->writeNote(-1);
                        layer = -2;
                        break;
                    }
                }
                if(layer < 0) continue;
                if(!too_many_notes){
                    dbgmsg("Note off (ch=" + String(channel) + " note=" + String(msg.getNoteNumber())
                            + " time=" + String(msg.getTimeStamp()) + ") received for note that is not on!");
                    too_many_notes = true;
                    importresult |= 1;
                }
            }
        }
        //Check final state
        for(layer=0; layer<max_layers; layer++){
            if(ls[layer]->isInUse()){
                dbgmsg("Chan " + String(channel) + " layer " + String(layer) + " left hanging! Fixing...");
                importresult |= 1;
                msg = MidiMessage::noteOff(channel+1, ls[layer]->curNote());
                msg.setTimeStamp(last_timestamp);
                layertracks[(max_layers*channel)+layer]->addEvent(msg);
            }
        }
        //Update matched pairs
        for(layer=0; layer<max_layers; layer++){
            layertrk = layertracks[(max_layers*channel)+layer];
            layertrk->sort();
            layertrk->updateMatchedPairs();
            if(layertrk->getNumEvents() & 1){
                dbgmsg("Chan " + String(channel) + " lyr " + String(layer) + " track has " 
                        + String(layertrk->getNumEvents()) + " (odd number of) events!");
                importresult |= 1;
            }
        }
    }
    //Generate Audioseq data
    structure = ValueTree("structure");
    ValueTree want, want2, section, newsec;
    Random::getSystemRandom().setSeedRandomly();
    //=======================================================================
    //Sequence header
    //=======================================================================
    dbgmsg("Creating sequence header", false);
    int num_tsections = tsectimes.size();
    tsectimes.add(last_timestamp);
    double newtempo;
    int tempolasttime = -100000, tempolastval = -100000;
    int t = 0;
    //Create section for header
    int cmd = 0, value;
    section = ValueTree("seqhdr");
    section.setProperty(idSType, 0, nullptr);
    structure.appendChild(section, nullptr);
    //End of Data
    want = wantAction("End of Data", 0);
    section.addChild(createCommand(want), 0, nullptr);
    //Mute Behavior (previously Sequence Format) (D3 20)
    value = (int)midiopts.getProperty("mutebhv", 0x20);
    want = wantAction("Mute Behavior", 0);
    wantProperty(want, "Value", value);
    section.addChild(createCommand(want), cmd, nullptr);
    cmd++;
    //Mute Scale (previously Sequence Type) (D5 32)
    value = (int)midiopts.getProperty("mutescale", 0x32);
    want = wantAction("Mute Scale", 0);
    wantProperty(want, "Value", value);
    section.addChild(createCommand(want), cmd, nullptr);
    cmd++;
    //Channel Enable (D7 XXXX)
    want = wantAction("Channel Enable", 0);
    wantProperty(want, "Bitfield", chanBitfield);
    section.addChild(createCommand(want), cmd, nullptr);
    cmd++;
    int addmstrvol_cmd = -1;
    bool hadmastervol = false;
    Array<int> tsechashes;
    //Add events from master track
    int sectimeidx = 0;
    bool done = false;
    for(int m=0; ; ++m){
        if(m >= mastertrack->getNumEvents()){
            done = true;
        }else{
            msg = mastertrack->getEventPointer(m)->message;
            timestamp = msg.getTimeStamp();
        }
        //Insert channel pointers for each section
        //sectimeidx is the *upcoming* section boundary, not the current section time is in
        for(; sectimeidx < num_tsections; sectimeidx++){ //Don't execute this for the boundary at the end of the piece
            if(!done && timestamp < tsectimes[sectimeidx]) break; //Still more commands before section boundary
            //dbgmsg("Section " + String(sectimeidx) + " starting at " + String(tsectimes[sectimeidx]));
            dbgmsg(".", false);
            //Get up to the time
            advanceToTimestamp(section, 0, cmd, t, tsectimes[sectimeidx]);
            //Channel pointers for new section
            for(int channel=0; channel<16; channel++){
                if(channelsused[channel] < 0) continue;
                //Create section for channel
                newsec = ValueTree("chanhdr");
                newsec.setProperty(idSType, 1, nullptr);
                newsec.setProperty(idChannel, channel, nullptr);
                newsec.setProperty(idTSection, sectimeidx, nullptr);
                structure.appendChild(newsec, nullptr);
                //Add End of Data command to channel
                want = wantAction("End of Data", 1);
                newsec.appendChild(createCommand(want), nullptr);
                //Add Ptr Channel Header to seq hdr
                want = wantAction("Ptr Channel Header", 0);
                wantProperty(want, "Channel", channel);
                wantProperty(want, reladdr ? "Relative Address" : "Absolute Address", 0xFFFF);
                want = createCommand(want);
                want.setProperty(idTargetSection, structure.getNumChildren() - 1, nullptr);
                section.addChild(want, cmd, nullptr);
                cmd++;
                if(tsechashes.size() < sectimeidx+1){
                    tsechashes.add(want.getProperty(idHash));
                    dbgmsg("tsec 0 chn cmd hash " + want.getProperty(idHash).toString());
                }
            }
        }
        if(addmstrvol_cmd < 0) addmstrvol_cmd = cmd;
        if(done) break;
        //Determine command to execute
        want = ValueTree(); //Invalidate
        if(msg.isTempoMetaEvent()){
            newtempo = msg.getTempoSecondsPerQuarterNote();
            newtempo = 60 / newtempo;
            if((int)newtempo != tempolastval && timestamp != tempolasttime){
                tempolastval = (int)newtempo;
                tempolasttime = timestamp;
                want = wantAction("Tempo", 0);
                wantProperty(want, "Value", (int)newtempo);
                want = createCommand(want);
            }
        }else if(msg.isSysEx()){
            if(msg.getSysExDataSize() == 6){
                const uint8_t* sysexdata = msg.getSysExData();
                if(sysexdata[2] == 0x04 && sysexdata[3] == 0x01){
                    //Master volume
                    want = wantAction("Master Volume", 0);
                    wantProperty(want, "Value", sysexdata[5]);
                    want = createCommand(want);
                    hadmastervol = true;
                }
            }
        }else if(msg.isTextMetaEvent()){
            metatext = msg.getTextFromTextMetaEvent();
            metatype = msg.getMetaEventType();
            if(metatype == 0x01 && metatext.startsWithIgnoreCase("jump:")){
                midiopts.setProperty("smartloop", false, nullptr);
                String target = metatext.substring(5);
                int tsec = tsecnames.indexOf(target, true);
                if(tsec < 0){
                    dbgmsg("MIDI file contained jump to nonexistent tsection (block) " + target + "!");
                    importresult |= 1;
                }else{
                    want = wantAction("Jump", 0);
                    wantProperty(want, reladdr ? "Relative Address" : "Absolute Address", 0xFFFF);
                    want = createCommand(want);
                    want.setProperty(idTargetSection, 0, nullptr);
                    want.setProperty(idTargetHash, tsechashes[tsec], nullptr);
                    dbgmsg("Canon MIDI jump to " + target + ", tsec " + String(tsec) 
                        + ", hash " + String(tsechashes[tsec]));
                }
            }
        }
        if(want.isValid()){
            advanceToTimestamp(section, 0, cmd, t, timestamp);
            //Write command
            section.addChild(want, cmd, nullptr);
            cmd++;
        }
    }
    if(tsechashes.size() != num_tsections){
        dbgmsg("tsections internal consistency error!");
        return 2;
    }
    //Get the time to the end
    advanceToTimestamp(section, 0, cmd, t, last_timestamp);
    //Loop to start
    if((bool)midiopts.getProperty("smartloop", false)){
        want = wantAction("Jump", 0);
        wantProperty(want, reladdr ? "Relative Address" : "Absolute Address", 0xFFFF);
        want = createCommand(want);
        want.setProperty(idTargetSection, 0, nullptr);
        int targetsection = num_tsections == 1 ? 0 : 1;
        dbgmsg("Adding smart loop command to tsec " + String(targetsection));
        want.setProperty(idTargetHash, tsechashes[targetsection], nullptr);
        section.addChild(want, cmd, nullptr);
        cmd++;
    }
    //Channel Disable (D6 XXXX)
    want = wantAction("Channel Disable", 0);
    wantProperty(want, "Bitfield", chanBitfield);
    section.addChild(createCommand(want), cmd, nullptr);
    cmd++;
    //Master Volume
    if(!hadmastervol){
        uint8_t defaultval = (int)midiopts.getProperty("mastervol", 0x58);
        if(defaultval > 0){
            dbgmsg("No Master Volume sysex command in the MIDI, adding default 0x" + hex(defaultval));
            want = wantAction("Master Volume", 0);
            wantProperty(want, "Value", defaultval);
            section.addChild(createCommand(want), addmstrvol_cmd, nullptr);
            cmd++;
        }
    }
    //=======================================================================
    //Channels
    //=======================================================================
    dbgmsg("\nCreating channel headers", false);
    int starttime, endtime;
    int cc;
    //CC Bandwidth Reduction setup
    OwnedArray<CCTracker> ccstates;
    int qa = midiopts.getProperty("q_other_amp", 1);
    for(cc=0; cc<130; cc++){ //128 is pitch, 129 is program
        ccstates.add(new CCTracker());
        ccstates[cc]->q_time = 0;
        ccstates[cc]->q_amp = qa;
    }
    ccstates[0]->q_amp = 0; //bank
    ccstates[128]->q_amp = midiopts.getProperty("q_pitch_amp", 1);
    ccstates[129]->q_amp = 0; //program
    qa = midiopts.getProperty("q_volpan_amp", 2);
    ccstates[7]->q_amp = qa; //volume
    ccstates[11]->q_amp = qa; //expression
    ccstates[10]->q_amp = qa; //pan
    ccstates[8]->q_amp = qa; //pan mix
    //Channel data
    for(sectimeidx=0; sectimeidx<num_tsections; sectimeidx++){
        starttime = tsectimes[sectimeidx];
        endtime = tsectimes[sectimeidx+1];
        for(int channel=0; channel<16; channel++){
            if(channelsused[channel] < 0) continue;
            trk = chantracks[channel];
            //dbgmsg("Chn " + String(channel) + " sec " + String(sectimeidx) + " starting at t" + String(starttime));
            dbgmsg(".", false);
            //Find channel header
            for(sec=0; sec<structure.getNumChildren(); sec++){
                section = structure.getChild(sec);
                if((int)section.getProperty(idSType, -1) == 1 
                        && (int)section.getProperty(idChannel, -1) == channel 
                        && (int)section.getProperty(idTSection, -1) == sectimeidx){
                    break;
                }
            }
            if(sec >= structure.getNumChildren()){
                dbgmsg("Could not find channel header for ch " + String(channel) + ", section " + String(sectimeidx) + "!");
                importresult |= 2;
                break;
            }
            cmd = 0;
            //Enable Long Notes, previously known as Chn Reset (C4)
            if(sectimeidx == 0){
                want = wantAction("Enable Long Notes", 1);
                section.addChild(createCommand(want), cmd, nullptr);
                cmd++;
            }
            //Create track headers
            for(layer=0; layer<max_layers; layer++){
                layertrk = layertracks[(max_layers*channel)+layer];
                if(layertrk->getNumEvents() == 0) continue;
                //Create SeqData for layer
                newsec = ValueTree("notelayer");
                newsec.setProperty(idSType, 2, nullptr);
                newsec.setProperty(idChannel, channel, nullptr);
                newsec.setProperty(idLayer, layer, nullptr);
                newsec.setProperty(idTSection, sectimeidx, nullptr);
                structure.appendChild(newsec, nullptr);
                //Add End of Data command to layer
                want = wantAction("End of Data", 2);
                newsec.appendChild(createCommand(want), nullptr);
                //Add Ptr Note Layer command to channel
                want = wantAction("Ptr Note Layer", 1);
                wantProperty(want, "Note Layer", layer);
                wantProperty(want, reladdr ? "Relative Address" : "Absolute Address", 0xFFFF);
                want = createCommand(want);
                want.setProperty(idTargetSection, structure.getNumChildren() - 1, nullptr);
                section.addChild(want, cmd, nullptr);
                cmd++;
            }
            //Clear CC states
            for(cc=0; cc<130; cc++){ //128 is pitch, 129 is program
                ccstates[cc]->lasttime = -10000000;
                ccstates[cc]->lastvalue = -10000000;
                ccstates[cc]->lastcmd = ValueTree();
            }
            //Parse all commands
            t = starttime;
            for(int m=0; m<trk->getNumEvents(); m++){
                msg = trk->getEventPointer(m)->message;
                timestamp = msg.getTimeStamp();
                if(timestamp < starttime) continue;
                //Only discard commands after section end if there's a section
                //after this one
                if(timestamp >= endtime && sectimeidx < num_tsections-1) continue;
                getExtendedCC(msg, cc, value);
                if(cc < 0 || cc >= 130) continue;
                //Find command for this CC
                ValueTree cccmd;
                int numccs = 0;
                for(int i=0; ; ++i){
                    cccmd = abi.getChild(i);
                    if(!cccmd.isValid()) break;
                    if(!isCommandValidIn(cccmd, 1)) continue;
                    if(cccmd.getProperty(idAction).toString() != "CC or CC Group") continue;
                    bool wasrightcc = false;
                    numccs = 0;
                    for(int j=0; j<cccmd.getNumChildren(); ++j){
                        ValueTree tmpparam = cccmd.getChild(j);
                        if(tmpparam.getProperty(idMeaning).toString() != "CC") continue;
                        if((int)tmpparam.getProperty(idCC) == cc) wasrightcc = true;
                        ++numccs;
                    }
                    if(!wasrightcc) continue;
                    break;
                }
                if(!cccmd.isValid()){
                    if(!ccstates[cc]->warnedUnused && isValidCC(cc)){
                        dbgmsg("MIDI uses CC " + String(cc) + " (first value " + String(value) 
                            + "), not mapped to any command in Audioseq");
                        ccstates[cc]->warnedUnused = true;
                    }
                    continue;
                }
                jassert(numccs >= 1);
                if(numccs == 1 && (abs(value - ccstates[cc]->lastvalue) <= ccstates[cc]->q_amp ||
                        timestamp - ccstates[cc]->lasttime <= ccstates[cc]->q_time)){
                    //This command is quantized out
                    //Update the last command's value, but don't update lastvalue
                    //(otherwise this would progressively quantize out any slow CC fade)
                    /*
                    dbgmsg("Chn " + String(channel) + " quantized out CC " + String(cc) 
                        + " value " + String(value) + " lastvalue " + String(ccstates[cc]->lastvalue)
                        + " timestamp " + String(timestamp) + " lasttime " + String(ccstates[cc]->lasttime));
                    */
                    if(ccstates[cc]->lastcmd.isValid()){
                        //lastcmd will be invalid if this is an action we aren't tracking
                        ValueTree tmpcmd = ccstates[cc]->lastcmd.getChildWithProperty(idCC, cc);
                        if(tmpcmd.isValid()){
                            tmpcmd.setProperty("Value", value, nullptr);
                        }else{
                            dbgmsg("Internal consistency error in CC quantization!");
                            return 2;
                        }
                    }
                    continue;
                }
                //Create CC command and search for values in next CCs
                //TODO: automatically add panpow after drum program change 127
                cccmd = cccmd.createCopy();
                cccmd.setProperty(idHash, Random::getSystemRandom().nextInt(), nullptr);
                for(int j=0; j<cccmd.getNumChildren(); ++j){
                    ValueTree tmpparam = cccmd.getChild(j);
                    if(tmpparam.getProperty(idMeaning).toString() != "CC") continue;
                    int paramcc = tmpparam.getProperty(idCC, 0);
                    //Find appropriate CC
                    bool found = false;
                    for(int i=m; i<trk->getNumEvents(); ++i){
                        MidiMessage msg2 = trk->getEventPointer(i)->message;
                        if((int)msg2.getTimeStamp() != timestamp) break;
                        int cc2, value2;
                        getExtendedCC(msg2, cc2, value2);
                        if(cc2 != paramcc) continue;
                        ccstates[paramcc]->lastvalue = value2;
                        ccstates[paramcc]->lasttime = timestamp;
                        ccstates[paramcc]->lastcmd = cccmd;
                        tmpparam.setProperty(idValue, value2, nullptr);
                        trk->deleteEvent(i, false);
                        if(i == m) --m;
                        found = true;
                        break;
                    }
                    if(!found){
                        dbgmsg("Multiple CC command " + cccmd.getProperty(idName).toString()
                            + " (channel " + String(channel)
                            + " timestamp " + String(timestamp) + " first CC " + String(cc) 
                            + ") missing required secondary CC " + String(paramcc)
                            + ", setting to zero!");
                        tmpparam.setProperty(idValue, 0, nullptr);
                        importresult |= 1;
                    }
                }
                advanceToTimestamp(section, 1, cmd, t, timestamp);
                section.addChild(cccmd, cmd, nullptr);
                cmd++;
            }
            //Get the time to the end
            advanceToTimestamp(section, 1, cmd, t, endtime);
        }
    }
    //=======================================================================
    //Note Layers / Tracks
    //=======================================================================
    dbgmsg("\nCreating tracks", false);
    MidiMessage msg2, msg3;
    int timestamp2, timestamp3;
    int note, delay, transpose;
    trk = nullptr;
    for(int channel=0; channel<16; channel++){
        if(channelsused[channel] < 0) continue;
        for(layer=0; layer<max_layers; layer++){
            layertrk = layertracks[(max_layers*channel)+layer];
            if(layertrk->getNumEvents() == 0) continue;
            //dbgmsg("Layer " + String(layer) + " chn " + String(channel) + " with " + String(layertrk->getNumEvents()) + " events");
            dbgmsg(".", false);
            for(sectimeidx=0; sectimeidx<num_tsections; sectimeidx++){
                starttime = tsectimes[sectimeidx];
                endtime = tsectimes[sectimeidx+1];
                //dbgmsg("Sec " + String(sectimeidx) + " starting at t" + String(starttime));
                dbgmsg(".", false);
                //Find track
                for(sec=0; sec<structure.getNumChildren(); sec++){
                    section = structure.getChild(sec);
                    if((int)section.getProperty(idSType, -1) == 2 
                            && (int)section.getProperty(idChannel, -1) == channel 
                            && (int)section.getProperty(idLayer, -1) == layer 
                            && (int)section.getProperty(idTSection, -1) == sectimeidx){
                        break;
                    }
                }
                if(sec >= structure.getNumChildren()){
                    dbgmsg("Could not find track data for layer " + String(layer) + " ch " + String(channel) + ", section " + String(sectimeidx) + "!");
                    importresult |= 2;
                    break;
                }
                cmd = 0;
                //Parse all commands
                int m;
                t = starttime;
                delay = -1;
                transpose = 0;
                timestamp3 = 0;
                //Init transpose
                want = wantAction("Layer Transpose", 2);
                wantProperty(want, "Value", transpose);
                ValueTree transposecmd = createCommand(want);
                section.addChild(transposecmd, cmd, nullptr);
                cmd++;
                //Get first note on
                for(m=0; m<layertrk->getNumEvents(); m++){
                    msg3 = layertrk->getEventPointer(m)->message;
                    timestamp3 = msg3.getTimeStamp();
                    if(timestamp3 < starttime || (timestamp3 == starttime && msg3.isNoteOff())) continue;
                    if(timestamp3 > endtime || (timestamp3 == endtime && !msg3.isNoteOff())){
                        m = layertrk->getNumEvents() + 1;
                        break;
                    }
                    if(msg3.isNoteOn()){
                        break;
                    }
                }
                if(m >= layertrk->getNumEvents()){
                    continue;
                }
                //Seek to timestamp
                advanceToTimestamp(section, 2, cmd, t, timestamp3);
                done = false;
                while(!done){
                    msg = msg3;
                    timestamp = timestamp3;
                    //Get next thing, which should be corresponding note off
                    m++;
                    if(m >= layertrk->getNumEvents()){
                        dbgmsg("Ran off end of track looking for note off!");
                        importresult |= 2;
                        break;
                    }
                    msg2 = layertrk->getEventPointer(m)->message;
                    if(!msg2.isNoteOff()){
                        dbgmsg("Note Off out of order! Cancelling track import!");
                        importresult |= 2;
                        break;
                    }
                    timestamp2 = msg2.getTimeStamp();
                    if(timestamp2 >= endtime){
                        //Cut off note at section break
                        timestamp2 = endtime;
                        timestamp3 = endtime;
                        done = true;
                    }else{
                        //Get note on after that
                        m++;
                        if(m >= layertrk->getNumEvents()){
                            timestamp3 = endtime;
                            done = true;
                        }else{
                            msg3 = layertrk->getEventPointer(m)->message;
                            if(!msg3.isNoteOn()){
                                dbgmsg("Note On out of order! Cancelling track import!");
                                importresult |= 2;
                                break;
                            }
                            timestamp3 = msg3.getTimeStamp();
                        }
                        if(timestamp3 >= endtime){
                            //End section after this note
                            timestamp3 = endtime;
                            done = true;
                        }
                    }
                    if(timestamp2 == timestamp && timestamp3 == timestamp){
                        //The next note is at the same time, just skip to it
                        dbgmsg("Zero-length note with no delay afterwards in chn " + String(channel)
                                + " ly " + String(layer) + " at t=" + String(timestamp) + ", discarding!");
                        importresult |= 1;
                        continue;
                    }
                    //Create note command
                    want = wantAction("Note", 2);
                    wantProperty(want, "Velocity", msg.getVelocity());
                    //Note
                    note = msg.getNoteNumber() - transpose - midi_basenote;
                    if(note < 0 || note >= 0x40){
                        if(note < 0){
                            transpose -= 12 * (((0 - note) / 12) + 1);
                        }else{
                            transpose += 12 * (((note - 0x40) / 12) + 1);
                        }
                        note = msg.getNoteNumber() - transpose - midi_basenote;
                        if(transposecmd.isValid()){
                            transposecmd.getChildWithProperty(idMeaning, "Value").setProperty(idValue, transpose, nullptr);
                        }else{
                            want2 = wantAction("Layer Transpose", 2);
                            wantProperty(want2, "Value", transpose);
                            section.addChild(createCommand(want2), cmd, nullptr);
                            cmd++;
                        }
                    }
                    wantProperty(want, "Note", note);
                    //Delay
                    delay = timestamp3 - timestamp;
                    if(delay >= 48*2 && ((timestamp2 - timestamp) * 0x100 / delay) < 0x08){
                        //Full note and then timestamp
                        wantProperty(want, "Delay", timestamp2 - timestamp);
                        wantProperty(want, "Gate Time", 0);
                        section.addChild(createCommand(want), cmd, nullptr);
                        cmd++;
                        advanceToTimestamp(section, 2, cmd, timestamp2, timestamp3);
                    }else{
                        wantProperty(want, "Delay", delay);
                        //Gate
                        if(delay == 0){
                            value = 0;
                        }else{
                            value = (timestamp3-timestamp2) * 0x100 / delay;
                            if(value > 0xFF){
                                //Zero-length note, make it a small length instead
                                dbgmsg("Zero-length note in chn " + String(channel) 
                                    + " ly " + String(layer) + " at t=" + String(timestamp)
                                    + "! Making small length instead...");
                                importresult |= 1;
                                value = 0xFF;
                            }
                        }
                        wantProperty(want, "Gate Time", value);
                        //Write note
                        section.addChild(createCommand(want), cmd, nullptr);
                        cmd++;
                    }
                    //Count time
                    t += delay;
                    transposecmd = ValueTree();
                }
                //Get the time to the end
                advanceToTimestamp(section, 2, cmd, t, endtime);
            }
        }
    }
    //=======================================================================
    //Optimization
    //=======================================================================
    optimize(midiopts);
    reduceTrackNotes();
    //Done
    dbgmsg("\n----------------------------------------------------------\nDone!!!");
    return importresult;
}

void SeqFile::optimize(ValueTree midiopts){
    int sec1, sec2;
    int stype1, stype2;
    int numcmds1, numcmds2;
    ValueTree section1, section2;
    int cmd1, cmd2, cmd3, cmd4;
    ValueTree command1, command2, command3, command4;
    String action1, action2, action3, action4;
    //Delete mostly-empty sections (with no meaningful data)
    //Empty tracks contain a Layer Transpose command and a End of Data command
    for(sec1=0; sec1<structure.getNumChildren(); ++sec1){
        section1 = structure.getChild(sec1);
        if((int)section1.getProperty(idSType, -1) != 2) continue;
        if(section1.getNumChildren() != 2) continue;
        if(section1.getChild(0).getProperty(idAction, "No Action").toString() != "Layer Transpose") continue;
        if(section1.getChild(1).getProperty(idAction, "No Action").toString() != "End of Data") continue;
        //Found it, delete this section
        deleteSection(sec1);
        --sec1;
    }
    //Empty channels contain a Timestamp command and a End of Data command
    for(sec1=0; sec1<structure.getNumChildren(); ++sec1){
        section1 = structure.getChild(sec1);
        if((int)section1.getProperty(idSType, -1) != 1) continue;
        if(section1.getNumChildren() != 2) continue;
        if(section1.getChild(0).getProperty(idAction, "No Action").toString() != "Delay") continue;
        if(section1.getChild(1).getProperty(idAction, "No Action").toString() != "End of Data") continue;
        //Found it, delete this section
        deleteSection(sec1);
        --sec1;
    }
    //Check if we want loop or call optimizations
    bool reladdr = (bool)midiopts.getProperty("reladdr", false);
    int stacksize = 4; //TODO consider stack
    bool useCalls = midiopts.getProperty("usecalls", true);
    bool callOnlyLayer = midiopts.getProperty("callonlylayer", false);
    bool useLoops = midiopts.getProperty("useloops", true);
    if(!useCalls && !useLoops){
        dbgmsg("\nNo loop or call optimization selected.");
        return;
    }
	//Check if loops need to be limited to 255 iterations
	int maxloopcount = getLargestCommandRange(0, "Loop Start", "Loop Count") - 1;
    dbgmsg("\nMaximum of " + String(maxloopcount) + " loop iterations");
    //
    int cmdafter;
    bool flag;
    int loopCount;
    int numCmdsDelete;
    //
    ValueTree want, want2, param;
    int cctype, cclast, ccdir;
    if(useLoops){
        dbgmsg("\nLooking for data to loop");
        for(sec1=0; sec1<structure.getNumChildren(); sec1++){
            section1 = structure.getChild(sec1);
            stype1 = section1.getProperty(idSType, -1);
            numcmds1 = section1.getNumChildren();
            //dbgmsg("Examining section " + String(sec1) + " (stype == " + String(stype1) + "), " + String(numcmds1) + " commands");
            dbgmsg(".", false);
            //Pick a command
            for(cmd1=0; cmd1<numcmds1-1; cmd1++){
                command1 = section1.getChild(cmd1);
                action1 = command1.getProperty(idAction, "No Action");
                //dbgmsg("----Command " + String(cmd1) + "(" + action1 + ")");
                //Don't loop pointers or no actions
                if(action1 == "No Action" || action1 == "End of Data" 
                        || action1 == "Jump" || action1 == "Branch"
                        || action1 == "Ptr Channel Header" || action1 == "Ptr Note Layer"){
                    continue;
                }
                //See if this command repeats later in the track, for loops
                for(cmd2=cmd1+1; cmd2<numcmds1-1; cmd2++){
                    command2 = section1.getChild(cmd2);
                    if(isCloseEnough(command1, command2, true, midiopts)){
                        //See if everything is the same in between
                        flag = true;
                        cmd3 = cmd1+1;
                        cmd4 = cmd2+1;
                        while(cmd3 < cmd2){
                            if(cmd4 >= numcmds1){
                                flag = false;
                                break;
                            }
                            if(!isCloseEnough(section1.getChild(cmd3), section1.getChild(cmd4), true, midiopts)){
                                flag = false;
                                break;
                            }
                            cmd3++;
                            cmd4++;
                        }
                        if(!flag) continue;
                        //We have a loop!
                        //dbgmsg("Sec " + String(sec1) + ": found loopable data from cmds " + String(cmd1) + " to " + String(cmd2));
                        //Check if the contents of the loop are solely timestamps and one kind of CC,
                        //and the CC values are monotonically going in one direction
                        flag = true;
                        cctype = -1;
                        ccdir = 0;
                        cclast = -1;
                        for(cmd3=cmd1; cmd3<cmd2 && flag; ++cmd3){
                            command3 = section1.getChild(cmd3);
                            action3 = command3.getProperty(idAction, "No Action");
                            if(action3 == "Delay"){
                                //do nothing
                            }else if(action3 == "CC or CC Group"){
                                for(int j=0; j<command3.getNumChildren() && flag; ++j){
                                    param = command3.getChild(j);
                                    if(param.getProperty(idMeaning).toString() != "CC") continue;
                                    int newcctype = param.getProperty(idCC);
                                    if(cctype < 0){
                                        cctype = newcctype;
                                        cclast = param.getProperty(idValue, -1234);
                                    }else if(cctype == newcctype){
                                        int ccthis = param.getProperty(idValue, -5678);
                                        if(ccdir == 0){
                                            if(ccthis < cclast) ccdir = -1;
                                            else if(ccthis > cclast) ccdir = 1;
                                        }else if(ccdir == 1){
                                            if(ccthis < cclast){
                                                //CCs were going up and now down, done
                                                flag = false;
                                            }
                                        }else if(ccdir == -1){
                                            if(ccthis > cclast){
                                                //CCs were going down and now up, done
                                                flag = false;
                                            }
                                        }
                                    }else{ //More than one type of CC detected
                                        flag = false;
                                    }
                                }
                            }else{
                                flag = false; //Something other than a CC detected (e.g. note)
                                break;
                            }
                        }
                        //If this looks like this might be a loop that would destroy the CCs, repeat
                        //the scan but with no margin for CCs being "close enough"
                        if(flag){
                            flag = true;
                            cmd3 = cmd1;
                            cmd4 = cmd2;
                            while(cmd3 < cmd2){
                                if(cmd4 >= numcmds1){
                                    flag = false;
                                    break;
                                }
                                if(!isCloseEnough(section1.getChild(cmd3), section1.getChild(cmd4), false, midiopts)){
                                    flag = false;
                                    break;
                                }
                                cmd3++;
                                cmd4++;
                            }
                            if(!flag) continue; //With tighter restrictions, the loop wasn't valid
                            flag = false; //Prohibit "close enough" in subsequent loop repeats
                        }else{
                            flag = true; //Allow "close enough" in subsequent loop repeats
                        }
                        //See if it's repeated some more afterwards
                        loopCount = 2;
                        cmd3 = cmd1;
                        cmdafter = cmd4;
                        while(cmd4 < numcmds1 && (loopCount+1 < maxloopcount)){
                            if(cmd3 == cmd2){
                                loopCount++;
                                cmd3 = cmd1;
                                cmdafter = cmd4;
                            }
                            if(!isCloseEnough(section1.getChild(cmd3), section1.getChild(cmd4), flag, midiopts)){
                                break;
                            }
                            cmd3++;
                            cmd4++;
                        }
                        //How much data to delete?
                        numCmdsDelete = cmdafter - cmd2;
                        //dbgmsg("Found loop at " + String(cmd1) + ", " + String(numCmdsDelete) + " commands"
                        //        + " long, which repeats " + String(loopCount) + " times" );
                        dbgmsg("*", false);
                        for(int i=0; i<numCmdsDelete; i++){
                            section1.removeChild(cmd2, nullptr);
                        }
                        //Put in Loop Start command
                        want = wantAction("Loop Start", stype1);
                        wantProperty(want, "Loop Count", loopCount);
                        section1.addChild(createCommand(want), cmd1, nullptr);
                        cmd2++; //This increments the position of cmd2!
                        //Put in Loop End command
                        want = wantAction("Loop End", stype1);
                        section1.addChild(createCommand(want), cmd2, nullptr);
                        //Move to end of loop to keep parsing
                        cmd1 = cmd2;
                        break;
                    }
                }
            }
        }
    }
    if(useCalls){
        dbgmsg("\nLooking for hooks");
        ValueTree origlist("list");
        ValueTree item;
        ValueTree sectionN;
        int secN;
        int j;
        int hooklength;
        int curdatalength, calleddatalength;
        for(sec1=0; sec1<structure.getNumChildren(); sec1++){
            section1 = structure.getChild(sec1);
            stype1 = section1.getProperty(idSType, -1);
            if(callOnlyLayer && stype1 != 2) continue;
            numcmds1 = section1.getNumChildren();
            int sec1time = getTotalSectionTime(section1);
            //dbgmsg("Examining section " + String(sec1) + " (stype == " + String(stype1) + "), " + String(numcmds1) + " commands");
            dbgmsg(".", false);
            //Pick a command
            for(cmd1=0; cmd1<numcmds1-1; cmd1++){
                command1 = section1.getChild(cmd1);
                action1 = command1.getProperty(idAction, "No Action");
                //dbgmsg("----Command " + String(cmd1) + "(" + action1 + ")");
                if(action1 == "No Action" || action1 == "End of Data" 
                        || action1 == "Jump" || action1 == "Branch"
                        || action1 == "Ptr Channel Header" || action1 == "Ptr Note Layer"){
                    continue;
                }
                //Consider next command too, there's no point in calling a section for 1 command
                command3 = section1.getChild(cmd1+1);
                action3 = command3.getProperty(idAction, "No Action");
                if(action3 == "No Action" || action3 == "End of Data" 
                        || action3 == "Jump" || action3 == "Branch"
                        || action3 == "Ptr Channel Header" || action3 == "Ptr Note Layer"){
                    continue;
                }
                //Find all the places, in any section of the same stype, where this string of two commands appears (including overlapping)
                origlist.removeAllChildren(nullptr);
                for(sec2=sec1; sec2<structure.getNumChildren(); sec2++){
                    section2 = structure.getChild(sec2);
                    stype2 = section2.getProperty(idSType, -1);
                    numcmds2 = section2.getNumChildren();
                    if(stype2 != stype1) continue;
                    for(cmd2 = (sec2 == sec1 ? cmd1 + 2 : 0); cmd2<numcmds2-1; cmd2++){
                        command2 = section2.getChild(cmd2);
                        action2 = command2.getProperty(idAction, "No Action");
                        if(action2 != action1) continue;
                        command4 = section2.getChild(cmd2+1);
                        action4 = command4.getProperty(idAction, "No Action");
                        if(action4 != action3) continue;
                        if(!isCloseEnough(command1, command2, true, midiopts)) continue;
                        if(!isCloseEnough(command3, command4, true, midiopts)) continue;
                        item = ValueTree("item");
                        item.setProperty(idSection, sec2, nullptr);
                        item.setProperty(idCmd, cmd2, nullptr);
                        origlist.appendChild(item, nullptr);
                        cmd2++;
                    }
                }
                //Found anything?
                if(origlist.getNumChildren() == 0) continue;
                //dbgmsg("Got hook, found elsewhere " + String(list.getNumChildren()) + " times");
                //Make temporary copy of original list with no overlaps and increasingly long hooks
                int bestscore = 0, curscore;
                ValueTree list, bestlist;
                for(hooklength = 1; ; hooklength++){
                    //Move cmd3 to the next one in the first section
                    cmd3 = cmd1 + hooklength;
                    if(cmd3 >= numcmds1){
                        break;
                    }
                    command3 = section1.getChild(cmd3);
                    action3 = command3.getProperty(idAction);
                    if(action3 == "No Action" || action3 == "End of Data" 
                            || action3 == "Jump" || action3 == "Branch"
                            || action3 == "Ptr Channel Header" || action3 == "Ptr Note Layer"){
                        break;
                    }
                    //See if we can move all the others
                    list = origlist.createCopy();
                    for(int i=0; i<list.getNumChildren(); i++){
                        flag = false;
                        item = list.getChild(i);
                        sec2 = item.getProperty(idSection);
                        cmd2 = item.getProperty(idCmd);
                        section2 = structure.getChild(sec2);
                        numcmds2 = section2.getNumChildren();
                        if(cmd2 + hooklength >= numcmds2) flag = true;
                        if(!flag){
                            //Make sure this hook isn't overlapping with any previous one
                            for(j=0; j<i; ++j){
                                if((int)list.getChild(j).getProperty(idSection) == sec2 
                                        && cmd2 <= (int)list.getChild(j).getProperty(idCmd) + hooklength){
                                    flag = true;
                                    break;
                                }
                            }
                            //Also make sure it's not overlapping with the original one!
                            if(sec1 == sec2 && cmd2 <= cmd1 + hooklength) flag = true;
                        }
                        if(!flag){
                            //See if this is a valid copy of the original hook
                            for(j=2; j<=hooklength; ++j){ //Already know first 2 commands match
                                cmd3 = cmd1 + j;
                                cmd4 = cmd2 + j;
                                if(cmd4 >= numcmds2) break;
                                command3 = section1.getChild(cmd3);
                                action3 = command3.getProperty(idAction, "No Action");
                                command4 = section2.getChild(cmd4);
                                action4 = command4.getProperty(idAction, "No Action");
                                if(action3 != action4) break;
                                if(!isCloseEnough(command3, command4, true, midiopts)) break;
                            }
                            if(j > hooklength){
                                //Ran off end of loop, therefore it matched
                                continue;
                            }
                        }
                        //Otherwise, drop the command
                        list.removeChild(i, nullptr);
                        --i;
                    }
                    curscore = list.getNumChildren() * (hooklength + 1); //Number of commands which will be removed with call
                    if(hooklength > 1 && bestscore > curscore){
                        //We were saving more commands before: stop
                        break;
                    }
                    bestscore = curscore;
                    bestlist = list.createCopy();
                }
                //dbgmsg("Grew hook to " + String(hooklength) + ", now used " + String(bestlist.getNumChildren()) + " times");
                //Calculate data savings, ensure it's a savings
                j = 0;
                for(int i=0; i<hooklength; ++i){
                    j += getNewCommandLength(section1.getChild(cmd1+i));
                }
                curdatalength = j*bestlist.getNumChildren();
                calleddatalength = j;
                want = wantAction("End of Data", stype1);
                want = createCommand(want);
                calleddatalength += getNewCommandLength(want);
                want = wantAction("Call", stype1);
                wantProperty(want, reladdr ? "Relative Address" : "Absolute Address", 0xFFFF);
                want = createCommand(want);
                calleddatalength += bestlist.getNumChildren() * getNewCommandLength(want);
                if(curdatalength <= calleddatalength){
                    //dbgmsg("Current data " + String(curdatalength) + " bytes, with calls " + String(calleddatalength) + " bytes, no savings, aborting call");
                    continue;
                }else{
                    //dbgmsg("Call " + String(hooklength) + " commands from " + String(bestlist.getNumChildren())
                    //        + " places saved " + String(curdatalength - calleddatalength) + " bytes");
                    dbgmsg("*", false);
                }
                //Create new section 
                secN = structure.getNumChildren();
                sectionN = ValueTree(section1.getType());
                sectionN.setProperty(idSType, stype1, nullptr);
                if(stype1 == 1 || stype1 == 2){
                    sectionN.setProperty(idChannel, section1.getProperty(idChannel), nullptr);
                }
                if(stype1 == 2){
                    sectionN.setProperty(idLayer, section1.getProperty(idLayer), nullptr);
                }
                sectionN.setProperty(idSrcCmdRef, cmd1, nullptr);
                structure.addChild(sectionN, secN, nullptr);
                //Copy all data to new section
                for(int i=0; i<hooklength; i++){
                    sectionN.appendChild(section1.getChild(cmd1+i).createCopy(), nullptr);
                }
                //Add End of Data command to new section
                want = wantAction("End of Data", stype1);
                sectionN.appendChild(createCommand(want), nullptr);
                //Replace all instances of data with pointer to new section
                want = wantAction("Call", stype1);
                wantProperty(want, reladdr ? "Relative Address" : "Absolute Address", 0xFFFF);
                want = createCommand(want);
                want.setProperty(idTargetSection, secN, nullptr);
                for(int i=bestlist.getNumChildren() - 1; i>=0; i--){ //Go in reverse order so the cmd numbers are never changed
                    item = bestlist.getChild(i);
                    sec2 = item.getProperty(idSection);
                    cmd2 = item.getProperty(idCmd);
                    section2 = structure.getChild(sec2);
                    for(cmd4=0; cmd4<hooklength; cmd4++){
                        section2.removeChild(cmd2, nullptr);
                    }
                    section2.addChild(want.createCopy(), cmd2, nullptr);
                }
                //Replace current instance
                for(cmd3=0; cmd3<hooklength; cmd3++){
                    section1.removeChild(cmd1, nullptr);
                }
                section1.addChild(want.createCopy(), cmd1, nullptr);
                //Make sure we didn't screw up
                int sec1time_after = getTotalSectionTime(section1);
                if(sec1time != sec1time_after){
                    dbgmsg("CRITICAL: Bug found when creating calls! Call data contained:");
                    for(int i=0; i<hooklength; ++i){
                        dbgmsg("--" + sectionN.getChild(i).getProperty(idAction).toString());
                    }
                    dbgmsg("Call was found at:");
                    dbgmsg("--Section " + String(sec1) + " cmd " + String(cmd1));
                    for(int i=0; i<bestlist.getNumChildren(); ++i){
                        dbgmsg("-- Section " + bestlist.getChild(i).getProperty(idSection).toString() 
                                       + " cmd " + bestlist.getChild(i).getProperty(idCmd).toString());
                    }
                    importresult |= 2;
                    return;
                }
            }
        }
        //Replace all 2-loops of 1-calls, 2-loops of 2-calls, or 3-loops of 1-calls with individual calls
        dbgmsg("\nFixing short-looped calls...", false);
        for(sec1=0; sec1<structure.getNumChildren(); sec1++){
            section1 = structure.getChild(sec1);
            stype1 = section1.getProperty(idSType, -1);
            numcmds1 = section1.getNumChildren();
            for(cmd1=0; cmd1<numcmds1-3; cmd1++){
                command1 = section1.getChild(cmd1);
                action1 = command1.getProperty(idAction, "No Action");
                if(action1 != "Loop Start") continue;
                loopCount = command1.getChildWithProperty(idMeaning, "Loop Count").getProperty(idValue);
                if(loopCount > 3) continue;
                if(loopCount == 3){
                    command3 = section1.getChild(cmd1+2);
                    if(command3.getProperty(idAction, "No Action").toString() != "Loop End") continue;
                    command2 = section1.getChild(cmd1+1);
                    if(command2.getProperty(idAction, "No Action").toString() != "Call") continue;
                    //dbgmsg("----Converting 3-loop of 1-call to 3 calls in sec " + String(sec1) + " cmd " + String(cmd1));
                    dbgmsg("*", false);
                    //Remove loop start, replace with call
                    section1.removeChild(cmd1, nullptr);
                    section1.addChild(command2.createCopy(), cmd1, nullptr);
                    //Remove loop end, replace with call
                    cmd1 += 2;
                    section1.removeChild(cmd1, nullptr);
                    section1.addChild(command2.createCopy(), cmd1, nullptr);
                }else if(loopCount == 2){
                    command2 = section1.getChild(cmd1+1);
                    if(command2.getProperty(idAction, "No Action").toString() != "Call") continue;
                    command3 = section1.getChild(cmd1+2);
                    command4 = section1.getChild(cmd1+3);
                    if(command3.getProperty(idAction, "No Action").toString() == "Loop End"){
                        //dbgmsg("----Converting 2-loop of 1-call to 2 calls in sec " + String(sec1) + " cmd " + String(cmd1));
                        dbgmsg("*", false);
                        //Remove loop start, replace with call
                        section1.removeChild(cmd1, nullptr);
                        section1.addChild(command2.createCopy(), cmd1, nullptr);
                        //Remove loop end
                        cmd1 += 2;
                        section1.removeChild(cmd1, nullptr);
                        cmd1--; //Go back so we hit the next command
                    }else if(command4.getProperty(idAction, "No Action").toString() == "Loop End"){
                        if(command3.getProperty(idAction, "No Action").toString() != "Call") continue;
                        //dbgmsg("----Converting 2-loop of 2-calls to 4 calls in sec " + String(sec1) + " cmd " + String(cmd1));
                        dbgmsg("*", false);
                        //Remove loop start
                        section1.removeChild(cmd1, nullptr);
                        //Remove loop end
                        cmd1 += 2;
                        section1.removeChild(cmd1, nullptr);
                        //Add two calls
                        section1.addChild(command2.createCopy(), cmd1, nullptr);
                        cmd1++;
                        section1.addChild(command3.createCopy(), cmd1, nullptr);
                    }
                }
            }
        }
    }
}

void SeqFile::reduceTrackNotes(){
    dbgmsg("\nReducing track notes to shortest types...");
    int sec, lastdelay, delay, gate, cmd;
    ValueTree section;
    ValueTree command, newcommand, paramd, paramg;
    String action;
    //Reduce
    for(sec=0; sec<structure.getNumChildren(); sec++){
        section = structure.getChild(sec);
        if((int)section.getProperty(idSType, -1) != 2) continue;
        //dbgmsg("--Section " + String(sec));
        lastdelay = -1234;
        for(cmd=0; cmd<section.getNumChildren(); cmd++){
            command = section.getChild(cmd);
            action = command.getProperty(idAction, "No Action");
            if(action == "Loop Start" || action == "Call"){
                lastdelay = -1234;
            }
            if(action != "Note") continue;
            newcommand = wantAction("Note", 2);
            //Note
            paramd = command.getChildWithProperty(idMeaning, "Note");
            wantProperty(newcommand, "Note", paramd.getProperty(idValue));
            //Velocity
            paramd = command.getChildWithProperty(idMeaning, "Velocity");
            wantProperty(newcommand, "Velocity", paramd.getProperty(idValue));
            //Delay and Gate
            paramd = command.getChildWithProperty(idMeaning, "Delay");
            paramg = command.getChildWithProperty(idMeaning, "Gate Time");
            if(!paramd.isValid() || !paramg.isValid()) continue;
            delay = paramd.getProperty(idValue, -8937);
            gate  = paramg.getProperty(idValue, -1237);
            if(delay != lastdelay){
                lastdelay = delay;
                if(gate != 0){
                    continue; //Don't replace the command, we didn't make a change
                }
                wantProperty(newcommand, "Delay", delay);
            }else{
                wantProperty(newcommand, "Gate Time", gate);
            }
            //Replace command
            newcommand = createCommand(newcommand);
            section.removeChild(cmd, nullptr);
            section.addChild(newcommand, cmd, nullptr);
        }
    }
}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////// exportMIDI objects //////////////////////////////
////////////////////////////////////////////////////////////////////////////////

struct ExportStackEntry{
    ExportStackEntry() = default;
    ExportStackEntry(ValueTree s, int c, int st, int l, uint32_t tt)
        : sec(s), cmd(c), stype(st), loopcount(l), t(tt) {}
    ValueTree sec;
    int cmd, stype, loopcount;
    uint32_t t;
};

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////// exportMIDI //////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

int SeqFile::exportMIDI(File midifile, ValueTree midiopts){
    if(!midifile.hasWriteAccess()){
        dbgmsg("No write access to " + midifile.getFullPathName() + "!");
        return 2;
    }
    FileOutputStream fos(midifile);
    if(fos.failedToOpen()){
        dbgmsg("Couldn't open file " + midifile.getFullPathName() + " for writing!");
        return 2;
    }
    fos.setPosition(0);
    fos.truncate();
	//Program options
	ValueTree progoptions("progoptions");
	const int progoptionscc = 117, progoptionsnullcc = 116;
    //CC Setup
    int ticks_multiplier = midiopts.getProperty("ppqnmultiplier", 1);
    if(ticks_multiplier <= 0) ticks_multiplier = 1;
    //MIDI file/tracks setup
    const int midi_basenote = 21;
    MidiMessage msg;
    std::unique_ptr<MidiFile> ret(new MidiFile());
    ret->setTicksPerQuarterNote(48 * ticks_multiplier);
    MidiMessageSequence mastertrack;
    OwnedArray<MidiMessageSequence> mtracks;
    for(int channel=0; channel<16; channel++){
        mtracks.add(new MidiMessageSequence());
        //Pitch bend range RPN--we think it's 12 always
        msg = MidiMessage::controllerEvent(channel+1, 101, 0);
        msg.setTimeStamp(0);
        mtracks[channel]->addEvent(msg);
        msg = MidiMessage::controllerEvent(channel+1, 100, 0);
        msg.setTimeStamp(0);
        mtracks[channel]->addEvent(msg);
        msg = MidiMessage::controllerEvent(channel+1, 6, 12);
        msg.setTimeStamp(0);
        mtracks[channel]->addEvent(msg);
        msg = MidiMessage::controllerEvent(channel+1, 38, 0);
        msg.setTimeStamp(0);
        mtracks[channel]->addEvent(msg);
    }
    int tsecnum = -1;
    bool willBeNewTSec = true;
    /*
    TODO banks
    //Bank setup
    //Try to load bank number
    std::unique_ptr<BankFile> bank = nullptr;
    do{
        if(bank_num < 0){
            dbgmsg("No bank associated with this sequence at load time");
            break;
        }
        //Look up bank info
        ValueTree abinfonode = romdesc.getChildWithName("knownfilelist")
                .getChildWithProperty("type", "Audiobank");
        if(!abinfonode.isValid()){
            dbgmsg("No Audiobank Index defined in RomDesc, cannot load bank");
            break;
        }
        uint32_t abaddr = (int)abinfonode.getProperty("address");
        if(abaddr >= rom.getSize()){
            dbgmsg("Invalid Audiobank Index in RomDesc " + hex(abaddr) + ", cannot load bank");
            break;
        }
        //Load bank
        dbgmsg("Loading bank " + hex((uint8_t)bank_num));
        bank.reset(new BankFile(romdesc));
        if(!bank->load(rom, bank_num)){
            dbgmsg("Loading bank " + String(bank_num) + " failed");
            bank = nullptr;
        }
    }while(false);
    */
    //Stack
    Array<ExportStackEntry> stack;
    //Transpose
	Array<int> transposes;
	transposes.resize(16 * max_layers);
    //
    dbgmsg("EXPORTING MIDI FILE");
    importresult = 0;
    int channel = -1, notelayer = -1;
    int delay = -1;
    ValueTree section = structure.getChild(0);
    int stype = 0;
    uint32_t t = 0;
    int cmd = -1;
    while(true){
        ++cmd;
        if(cmd >= section.getNumChildren()){
            dbgmsg("Parsing ran off end of section!");
            return 2;
        }
        ValueTree command = section.getChild(cmd);
        String action = command.getProperty(idAction, "Unknown");
        //Normal actions
        if(action == "Unknown"){
            //do nothing
            dbgmsg("Unknown Action " + hex((uint8_t)(int)command.getProperty(idCmd)) 
                    + " in stype " + String(stype));
        }else if(action == "No Action" || action == "Mute Behavior" || action == "Mute Scale"
                || action == "Channel Enable" || action == "Channel Disable"
                || action == "Enable Long Notes"){
            //silently ignore
        }else if(action == "Jump" || action == "Branch" || action == "Seq Hdr Call Table"
                || action == "Set Dyntable"
                || action == "Channel from Dyntable" || action == "Layer from Dyntable"
                || action == "Dyntable from Dyntable" || action == "Data from Dyntable"
                || action == "Dyntable from Data" || action == "Ptr Envelope"
                || action == "Ptr Other Table" || action == "Ptr Self" || action == "Maybe Ptr"){
            dbgmsg("Ignoring " + action);
        }else if(action == "Ptr Message"){
            //TODO print message from sequence
        }else if(action == "Delay"){
            //Time difference taken care of by delay (after this if action)
            if(stype == 0){
                willBeNewTSec = true; //Next Ptr Chan Hdr will be a new section
            }
        }else if(action == "End of Data"){
            if(stack.size() == 0){
                break; //Done
            }
            if(cmd != section.getNumChildren()-1){
                dbgmsg("Warning, returning due to end of data not at end of section!");
            }
            ExportStackEntry returnto = stack.removeAndReturn(stack.size()-1);
            if(returnto.loopcount != 0){
                dbgmsg("End of Data while in a loop (corrupt sequence)!");
                return 2;
            }
            section = returnto.sec;
            cmd = returnto.cmd;
            if(stype != returnto.stype){
                //Return from chn or track, not call
                t = returnto.t;
            }
            stype = returnto.stype;
            //Reset variables which are no longer valid
            if(stype == 1){
                notelayer = -1;
            }else if(stype == 0){
                channel = -1;
            }
            //dbgmsg("End of Data return to stype " + String(stype));
        }else if(action == "Call"){
            if(!command.hasProperty(idTargetSection)){
                dbgmsg("Call without target section!");
                return 2;
            }
            int newsec = command.getProperty(idTargetSection);
            if(newsec < 0 || newsec >= structure.getNumChildren()){
                dbgmsg("Call to undefined section!");
                return 2;
            }
            //dbgmsg("Call to section " + String(newsec));
            stack.add(ExportStackEntry(section, cmd, stype, 0, 100000));
            cmd = -1;
            section = structure.getChild(newsec);
        }else if(action == "Loop Start"){
            ValueTree param = command.getChildWithProperty(idMeaning, "Loop Count");
            if(!param.isValid()){
                dbgmsg("Loop Start with no Loop Count!");
                return 2;
            }
            int loopcount = param.getProperty(idValue);
            if(loopcount < 2 || loopcount > 0xFF){
                dbgmsg("Likely invalid loop count = " + String(loopcount) + "!");
                importresult |= 1;
            }
            stack.add(ExportStackEntry(section, cmd, stype, loopcount, 100000));
        }else if(action == "Loop End"){
            if(stack.size() == 0 || stack.getLast().loopcount <= 0){
                dbgmsg("Loop End command not after Loop Start!");
                return 2;
            }
            if(stack.getLast().loopcount == 1){
                stack.remove(stack.size()-1);
            }else{
                --stack.getReference(stack.size()-1).loopcount;
                cmd = stack.getLast().cmd;
            }
        }else if(action == "Loop Break"){
            dbgmsg("Loop Break command not supported in MIDI export, useless anyway"
                " without jump/branch and actual playback (Q tracking, etc.)!");
            importresult |= 1;
        }else if(action == "Ptr Channel Header"){
            if(stype != 0){
                dbgmsg("Ptr Channel Header from somewhere other than seq header!");
                return 2;
            }
            if(!command.hasProperty(idTargetSection)){
                dbgmsg("Ptr Channel Header without target section!");
                return 2;
            }
            int newsec = command.getProperty(idTargetSection);
            if(newsec < 0 || newsec >= structure.getNumChildren()){
                dbgmsg("Ptr Channel Header to undefined section!");
                return 2;
            }
            ValueTree param = command.getChildWithProperty(idMeaning, "Channel");
            if(!param.isValid()){
                dbgmsg("Ptr Channel Header with no Channel!");
                return 2;
            }
            channel = param.getProperty(idValue);
            if(channel < 0 || channel >= 16){
                dbgmsg("Ptr Channel Header with invalid channel number!");
                return 2;
            }
            //dbgmsg("Ptr Channel Header (ch " + String(channel) + ") to section " + String(newsec));
            stack.add(ExportStackEntry(section, cmd, stype, 0, t));
            section = structure.getChild(newsec);
            if((int)section.getProperty(idSType, -1) != 1){
                dbgmsg("Ptr Channel Header to a section which isn't a channel!");
                return 2;
            }
            cmd = -1;
            stype = 1;
            //MIDI file section
            if(willBeNewTSec){
                ++tsecnum;
                willBeNewTSec = false;
                dbgmsg("Starting section " + String(tsecnum) + ", t=" + hex(t,16));
                msg = MidiMessage::textMetaEvent(0x06, "Section " + String(tsecnum));
                msg.setTimeStamp(t*ticks_multiplier);
                mastertrack.addEvent(msg);
            }
        }else if(action == "Ptr Note Layer"){
            if(stype != 1){
                dbgmsg("Ptr Note Layer from somewhere other than channel header!");
                return 2;
            }
            if(!command.hasProperty(idTargetSection)){
                dbgmsg("Ptr Note Layer without target section!");
                return 2;
            }
            int newsec = command.getProperty(idTargetSection);
            if(newsec < 0 || newsec >= structure.getNumChildren()){
                dbgmsg("Ptr Note Layer to undefined section!");
                return 2;
            }
            ValueTree param = command.getChildWithProperty(idMeaning, "Note Layer");
            if(!param.isValid()){
                dbgmsg("Ptr Note Layer with no Note Layer!");
                return 2;
            }
            notelayer = param.getProperty(idValue);
            if(notelayer < 0 || notelayer >= max_layers){
                dbgmsg("Ptr Note Layer with invalid note layer!");
                return 2;
            }
            //dbgmsg("Ptr Note Layer (ch " + String(channel) + ", ly " 
            //    + String(notelayer) + ") to section " + String(newsec));
            stack.add(ExportStackEntry(section, cmd, stype, 0, t));
            section = structure.getChild(newsec);
            if((int)section.getProperty(idSType, -1) != 2){
                dbgmsg("Ptr Note Layer to a section which isn't a track!");
                return 2;
            }
            cmd = -1;
            stype = 2;
            delay = -1;
        }else if(action == "Master Volume"){
            if(stype != 0){
                dbgmsg("Master Volume in somewhere other than seq header!");
                importresult |= 1; continue;
            }
            ValueTree param = command.getChildWithProperty(idMeaning, "Value");
            if(!param.isValid()){
                dbgmsg("Master Volume event with no value!");
                importresult |= 1; continue;
            }
            int value = param.getProperty(idValue);
            if(value < 0 || value > 0x7F){
                dbgmsg("Master Volume event with invalid value!");
                importresult |= 1; continue;
            }
            char sysexdata[6];
            sysexdata[0] = 0x7F;
            sysexdata[1] = 0x7F;
            sysexdata[2] = 0x04;
            sysexdata[3] = 0x01;
            sysexdata[4] = 0x00;
            sysexdata[5] = value;
            msg = MidiMessage::createSysExMessage(sysexdata, 6);
            msg.setTimeStamp(t*ticks_multiplier);
            mastertrack.addEvent(msg);
        }else if(action == "Tempo"){
            if(stype != 0){
                dbgmsg("Tempo in somewhere other than seq header!");
                importresult |= 1; continue;
            }
            ValueTree param = command.getChildWithProperty(idMeaning, "Value");
            if(!param.isValid()){
                dbgmsg("Tempo event with no value!");
                importresult |= 1; continue;
            }
            int value = param.getProperty(idValue);
            if(value <= 0){
                dbgmsg("Tempo event with invalid value!");
                importresult |= 1; continue;
            }
            uint32_t tempovalue = 60000000 / value;
            msg = MidiMessage::tempoMetaEvent(tempovalue);
            msg.setTimeStamp(t*ticks_multiplier);
            mastertrack.addEvent(msg);
        }else if(action == "CC or CC Group"){
            if(stype != 1){
                dbgmsg(action + " in somewhere other than channel header!");
                importresult |= 1; continue;
            }
            for(int i=0; i<command.getNumChildren(); ++i){
                ValueTree param = command.getChild(i);
                if(param.getProperty(idMeaning).toString() != "CC") continue;
                int cc = param.getProperty(idCC, -1);
                if(!isValidCC(cc)){
                    dbgmsg("CC command mapped to invalid CC " + String(cc) + "!");
                    importresult |= 1;
                    continue;
                }
                int value = param.getProperty(idValue);
                if(cc != 128 && (value < 0 || value > 0x7F)){
                    dbgmsg("CC " + String(cc) + " event with invalid value = " + String(value) + "!");
                    importresult |= 1;
                    value = value < 0 ? 0 : 0x7F;
                }
                if(cc == 128){
                    //Pitch bend
                    if(value >= 0x80) value -= 0x100;
                    value = (1<<13) + (value << 6);
                    if(value < 0 || value >= (1<<14)){
                        dbgmsg("Invalid pitch bend " + String(value) + "!");
                        importresult |= 1;
                    }
                    //dbgmsg("Pitch Bend original value " + String(value) + " or " + hex((uint32_t)value));
                    msg = MidiMessage::pitchWheel(channel+1, value);
                    msg.setTimeStamp(t*ticks_multiplier);
                    mtracks[channel]->addEvent(msg);
                }else if(cc == 0){
                    //TODO handle banks
                    msg = MidiMessage::controllerEvent(channel+1, 0, value);
                    msg.setTimeStamp(t*ticks_multiplier);
                    mtracks[channel]->addEvent(msg);
                }else if(cc == 129){
                    //Program change
                    dbgmsg("Program change (instrument) " + String(value) + " channel " + String(channel));
                    //Cancel previous progoptions
                    msg = MidiMessage::controllerEvent(channel+1, progoptionsnullcc, 0);
                    msg.setTimeStamp(t*ticks_multiplier);
                    mtracks[channel]->addEvent(msg);
                    //Load MIDI equivalent instrument from bank
                    int midiprogram = value;
                    /*
                    TODO bank integration
                    do{
                        if(midiopts.getProperty("exportformat", "gm_ch10").toString() == "original"){
                            dbgmsg("Not converting Chn Instrument because want original format export");
                            break;
                        }
                        if(bank == nullptr){
                            dbgmsg("Could not load MIDI instrument from bank: no bank specified");
                            break;
                        }
                        ValueTree instlist = bank->d.getChildWithName("abbank").getChildWithProperty("name", "ABBank")
                                .getChildWithProperty("meaning", "List of Ptrs to Insts");
                        if(!instlist.isValid()){
                            dbgmsg("Could not load MIDI instrument from bank: abbank invalid");
                            break;
                        }
                        ValueTree instlistitem = instlist.getChild(value);
                        if(!instlistitem.isValid()){
                            dbgmsg("Could not load MIDI instrument from bank: no ABBank entry for inst #" + String(value) + " (usually means out of range)");
                            break;
                        }
                        int instindex = instlistitem.getProperty("index", -1);
                        if(instindex < 0){
                            dbgmsg("Could not load MIDI instrument from bank: instrument is nullptr");
                            break;
                        }
                        ValueTree instrument = bank->d.getChildWithName("instruments").getChild(instindex);
                        if(!instrument.isValid()){
                            dbgmsg("Could not load MIDI instrument from bank: could not load instrument #" + String(instindex));
                            break;
                        }
                        String map = instrument.getProperty("map", "Error").toString();
                        if(map == "program"){
                            midiprogram = instrument.getProperty("program", 0);
                            int tp = instrument.getProperty("transpose", 0);
                            if(tp != 0){
                                msg = MidiMessage::controllerEvent(channel+1, progoptionscc, progoptions.getNumChildren());
                                msg.setTimeStamp(t*ticks_multiplier);
                                mtracks[channel]->addEvent(msg);
                                ValueTree tpopt("instrument");
                                tpopt.setProperty("tp", tp, nullptr);
                                progoptions.appendChild(tpopt, nullptr);
                            }
                            dbgmsg("Changed instrument " + String(value) + " to program " + String(midiprogram)
                                     + ", transpose " + String(tp));
                        }else if(map == "drum"){
                            msg = MidiMessage::controllerEvent(channel+1, progoptionscc, progoptions.getNumChildren());
                            msg.setTimeStamp(t*ticks_multiplier);
                            mtracks[channel]->addEvent(msg);
                            ValueTree tpopt("drum");
                            tpopt.setProperty("drum1", instrument.getProperty("drumsplit1", 0), nullptr);
                            tpopt.setProperty("drum2", instrument.getProperty("drumsplit2", 0), nullptr);
                            tpopt.setProperty("drum3", instrument.getProperty("drumsplit3", 0), nullptr);
                            ValueTree temp = instrument.getChildWithName("struct").getChildWithProperty("meaning", "Split Point 1");
                            if(!temp.isValid()){
                                dbgmsg("Instrument has no Split Point 1 field!");
                                tpopt.setProperty("split1", -1, nullptr);
                            }else{
                                tpopt.setProperty("split1", (int)temp.getProperty("value", -1) + midi_basenote, nullptr);
                            }
                            temp = instrument.getChildWithName("struct").getChildWithProperty("meaning", "Split Point 2");
                            if(!temp.isValid()){
                                dbgmsg("Instrument has no Split Point 2 field!");
                                tpopt.setProperty("split2", -1, nullptr);
                            }else{
                                tpopt.setProperty("split2", (int)temp.getProperty("value", -1) + midi_basenote, nullptr);
                            }
                            progoptions.appendChild(tpopt, nullptr);
                            if(midiopts.getProperty("exportformat", "gm_ch10").toString() == "gm_multi"){
                                //Add multi-drum-channel hacks
                                //GM2 mode on
                                // uint8_t gm2modeonsysex[4] = {0x7E, 0x7F, 0x09, 0x03};
                                // msg = MidiMessage::createSysExMessage(gm2modeonsysex, 4);
                                // msg.setTimeStamp(t*ticks_multiplier);
                                // mtracks[channel]->addEvent(msg);
                                //GM2 bank 120,0 is percussion
                                msg = MidiMessage(0xB0 | channel, 0, 120, t*ticks_multiplier);
                                mtracks[channel]->addEvent(msg);
                                msg = MidiMessage(0xB0 | channel, 32, 0, t*ticks_multiplier);
                                mtracks[channel]->addEvent(msg);
                                //Roland GS: SysEx to turn any channel to percussion mode
                                uint8_t gssysex[9] = {0x41, 0x10, 0x42, 0x12, 0x40, (uint8_t)(0x10 + channel), 0x15, 0x02, (uint8_t)(0x19 - channel)};
                                msg = MidiMessage::createSysExMessage(gssysex, 9);
                                msg.setTimeStamp(t*ticks_multiplier);
                                mtracks[channel]->addEvent(msg);
                                //TODO none of this is ever turned off, in case the sequence turns this back from drum mode to an instrument!
                            }
                            continue; //Don't add program change message
                        }
                    }while(false);
                    */
                    //
                    msg = MidiMessage::programChange(channel+1, midiprogram);
                    msg.setTimeStamp(t*ticks_multiplier);
                    mtracks[channel]->addEvent(msg);
                }else{
                    //Normal CC
                    msg = MidiMessage::controllerEvent(channel+1, cc, value);
                    msg.setTimeStamp(t*ticks_multiplier);
                    mtracks[channel]->addEvent(msg);
                }
            }
        }else if(action == "Chn Transpose"){
            if(stype != 1){
                dbgmsg("Chn Transpose in somewhere other than channel header!");
                importresult |= 1; continue;
            }
            ValueTree param = command.getChildWithProperty(idMeaning, "Value");
            if(!param.isValid()){
                dbgmsg("Chn Transpose event with no value!");
                importresult |= 1; continue;
            }
            int value = param.getProperty(idValue);
            if(value >= 0x80) value -= 0x100;
            //TODO this is not correct, it can change while the channel is playing
            for(int i = 0; i < max_layers; i++){
                transposes.set((channel*max_layers)+i, value);
            }
        }else if(action == "Layer Transpose"){
            if(stype != 2){
                dbgmsg("Layer Transpose in somewhere other than track data!");
                importresult |= 1; continue;
            }
            ValueTree param = command.getChildWithProperty(idMeaning, "Value");
            if(!param.isValid()){
                dbgmsg("Layer Transpose event with no value!");
                importresult |= 1; continue;
            }
            int value = param.getProperty(idValue);
            if(value >= 0x80) value -= 0x100;
            transposes.set((channel*max_layers)+notelayer, value);
        }else if(action == "Note"){
            if(stype != 2){
                dbgmsg("Note in somewhere other than track data!");
                importresult |= 1; continue;
            }
            //Delay already taken care of
            //Note
            ValueTree param = command.getChildWithProperty(idMeaning, "Note");
            if(!param.isValid()){
                dbgmsg("Note event with no note!");
                importresult |= 1; continue;
            }
            int value = param.getProperty(idValue);
            int transpose = transposes[(channel*max_layers)+notelayer];
            int note = value + transpose + midi_basenote;
            if(note < 0 || note >= 128){
                dbgmsg("Bad (transposed?) note: c " + String(channel) + ", l " + String(notelayer)
                        + ": note " + String(value)
                        + ", transpose " + String(transpose)
                        + ", base " + String(midi_basenote)
                        + ": result " + String(note));
                importresult |= 1; continue;
            }
            //Velocity
            param = command.getChildWithProperty(idMeaning, "Velocity");
            int velocity = param.isValid() ? (int)param.getProperty(idValue) : 0x7F;
            //Gate time
            param = command.getChildWithProperty(idMeaning, "Gate Time");
            int gate = param.isValid() ? (int)param.getProperty(idValue) : 0;
            //Fetch delay to get gate time proportion
            param = command.getChildWithProperty(idMeaning, "Delay");
            if(param.isValid()){
                delay = param.getProperty(idValue);
            }else{
                if(delay < 0){
                    dbgmsg("Note command using previous delay, but not previously set!");
                    importresult |= 1; continue;
                }
                //Add the delay to the current command so we actually do the delay after the note is written
                param = ValueTree("parameter");
                param.setProperty(idMeaning, "Delay", nullptr);
                param.setProperty(idValue, delay, nullptr);
                command = command.createCopy(); //don't change the actual sequence data
                command.appendChild(param, nullptr);
            }
            /*
            dbgmsg("@" + hex(a, 4) + " c " + hex((uint8_t)channel, 1) + " l " + hex((uint8_t)notelayer, 1)
                    + " n " + hex((uint8_t)note)       + " v " +  hex((uint8_t)velocity) 
                    + " g " +  hex((uint32_t)gate, 4)  + " d " + hex((uint32_t)delay, 4)
                    + " r " + String((float)((gate*delay) / 256.0))
                    + (qDelay ? ("") : (" (using old delay)"))
                    + (qGate ? ("") : (" (no gate)"))
                    + (qVelocity ? ("") : (" (using old velocity)"))  );
            */
            msg = MidiMessage::noteOn(channel+1, note, (uint8_t)velocity);
            msg.setTimeStamp(t*ticks_multiplier);
            mtracks[channel]->addEvent(msg);
            msg = MidiMessage::noteOff(channel+1, note, (uint8_t)0);
            msg.setTimeStamp((t + delay - ((gate*delay) >> 8))*ticks_multiplier);
            mtracks[channel]->addEvent(msg);
        }else{
            dbgmsg("Unknown command action " + action + "!");
            importresult |= 1;
        }
        //Execute delay
        ValueTree param = command.getChildWithProperty(idMeaning, "Delay");
        if(param.isValid()){
            //Don't set the variable "delay"--future notes reference the last note's delay, not just the last delay which may have occurred
            t += (int)param.getProperty(idValue);
        }
    }
    //Ensure messages are in order
    for(channel=0; channel<16; channel++){
        mtracks.set(channel, ensureSimulMsgsInOrder(*mtracks[channel]), true);
    }
    //Resolve progoptions
    dbgmsg("Resolving progoptions...");
    for(channel=0; channel<16; channel++){
        int tp = 0;
        int drummode = 0, drum1 = -1, drum2 = -1, drum3 = -1, split1 = -1, split2 = -1;
        for(int m=0; m<mtracks[channel]->getNumEvents(); ++m){
            MidiMessage* msgp = &(mtracks[channel]->getEventPointer(m)->message);
            if(msgp->isController() && msgp->getControllerNumber() == progoptionsnullcc){
                dbgmsg("--Chn " + String(channel) + ": progoptions reset");
                tp = 0;
                drummode = 0;
                mtracks[channel]->deleteEvent(m, false);
                --m;
            }else if(msgp->isController() && msgp->getControllerNumber() == progoptionscc){
                ValueTree po = progoptions.getChild(msgp->getControllerValue());
                mtracks[channel]->deleteEvent(m, false);
                --m;
                if(!po.isValid()){
                    dbgmsg("progoptions consistency error!");
                    importresult |= 1; continue;
                }
                if(po.getType().toString() == "instrument"){
                    dbgmsg("--Chn " + String(channel) + ": new inst progoptions tp=" + String(tp));
                    tp = po.getProperty("tp", 0);
                }else if(po.getType().toString() == "drum"){
                    drum1 = po.getProperty("drum1", -1);
                    drum2 = po.getProperty("drum2", -1);
                    drum3 = po.getProperty("drum3", -1);
                    split1 = po.getProperty("split1", -1);
                    split2 = po.getProperty("split2", -1);
                    if(midiopts.getProperty("exportformat", "gm_ch10").toString() == "gm_multi"){
                        dbgmsg("--Chn " + String(channel) + ": new progoptions multi drum mode");
                        drummode = 2;
                    }else{
                        dbgmsg("--Chn " + String(channel) + ": new progoptions ch10 drum mode");
                        drummode = 1;
                    }
                }else{
                    dbgmsg("progoptions type error!");
                    importresult |= 1;
                }
            }else if(msgp->isNoteOnOrOff()){
                if(drummode == 0){
                    if(tp != 0){
                        msgp->setNoteNumber(msgp->getNoteNumber() + tp);
                    }
                }else{
                    int n = msgp->getNoteNumber();
                    if(n < split1){
                        msgp->setNoteNumber(drum1);
                    }else if(n > split2){
                        msgp->setNoteNumber(drum3);
                    }else{
                        msgp->setNoteNumber(drum2);
                    }
                    if(drummode == 1){
                        //Move to Ch. 10 (0x9)
                        msgp->setChannel(10);
                        mtracks[0x9]->addEvent(*msgp);
                        mtracks[channel]->deleteEvent(m, false);
                        --m;
                    }
                }
            }
        }
    }
    dbgmsg("Finishing MIDI...");
    //Ensure messages are in order (again)
    for(channel=0; channel<16; channel++){
        mtracks.set(channel, ensureSimulMsgsInOrder(*mtracks[channel]), true);
    }
    //Combine into MIDI file
    ret->addTrack(mastertrack);
    for(channel=0; channel<16; channel++){
        ret->addTrack(*mtracks[channel]);
    }
    if(!ret->writeTo(fos, 1)){
        dbgmsg("Final MIDI write failed!");
        return 2;
    }
    fos.flush();
    dbgmsg("Saved MIDI to " + midifile.getFullPathName());
    return importresult;
}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////// importMus functions /////////////////////////////
////////////////////////////////////////////////////////////////////////////////


void SeqFile::loadMusFileLines(OwnedArray<MusLine> &lines, String path, 
        int insertIdx, MusLine *includeLine){
    File f = File::getCurrentWorkingDirectory().getChildFile(path);
    if(!f.existsAsFile() || f.getSize() <= 0){
        includeLine->Error("File " + path + " doesn't exist! Note: current working directory is "
            + File::getCurrentWorkingDirectory().getFullPathName());
        return;
    }
    if(f.getSize() > 1000000){
        includeLine->Error("File " + path + " is more than 1MB, probably not a sequence!");
        return;
    }
    FileInputStream fis(f);
    if(fis.failedToOpen()){
        includeLine->Error("Couldn't open file " + path + "!");
        return;
    }
    dbgmsg("Loading " + path + "...");
    int linenum = 0;
    while(!fis.isExhausted()){
        ++linenum;
        MusLine *line = new MusLine(this, fis.readNextLine(), f.getFileName(), linenum);
        if(!line->l.isEmpty()){
            line->Tokenize();
            ++insertIdx;
            lines.insert(insertIdx, line);
        }else{
            delete line;
        }
    }
}

bool SeqFile::parseCanonNoteName(String s, int &noteValue){
    s = s.toLowerCase();
    if(s.length() != 3) return false;
    if(!String("abcdefg").containsChar(s[0])) return false;
    if(!String("nfs").containsChar(s[1])) return false;
    if(s[2] < '0' || s[2] > '6') return false;
    //A0 is 0, octave changes to 1 once you get to C
    static const int noteNameMap[7] = {0, 2, 3-12, 5-12, 7-12, 8-12, 10-12};
    noteValue = noteNameMap[s[0] - 'a'];
    if(s[1] == 'f') --noteValue; //allows for obscure but musically valid
    if(s[1] == 's') ++noteValue; //notes like C flat and B sharp
    noteValue += 12 * (s[2] - '0');
    return true;
}

bool SeqFile::isValidLabel(String s){
    //Allowed characters: alphanumeric, @, _. Don't need to check for
    //commas or whitespace due to tokenization scheme.
    return !s.containsAnyOf("!\"#$%&'()*+-./:;<=>?[\\]^`{|}~");
}
bool SeqFile::isValidDefineKey(String s){
    return !s.containsAnyOf("!\"#$%&'()*+-./:;<=>?@[\\]^`{|}~");
}
bool SeqFile::isValidDefineValue(String s){
    return !s.containsAnyOf("!\"#%&'()*+./:;<=>?@[\\]^`{|}~");
}

void SeqFile::substituteDefines(const StringPairArray &defs, MusLine *line){
    int i = 0;
    for(int d=0; d<defs.size() && i < 100; ++d){
        String key = defs.getAllKeys()[d];
        if(line->l.contains(key)){
            line->l = line->l.replace(key, defs.getAllValues()[d]);
            d = -1;
            ++i;
        }
    }
    if(i == 100){
        line->Error("Too many #define substitutions, recursive #defines or something like that!");
    }
    if(i >= 1){
        line->Tokenize();
    }
    /*
    for(int t=0; t<line->toks.size(); ++t){
        int i;
        for(i=0; i<100; ++i){
            if(!defs.containsKey(line->toks[t])) break;
            line->toks.set(t, defs[line->toks[t]]);
        }
        if(i == 100){
            line->Error("Too many #define substitutions, recursive #defines or something like that!");
            return;
        }
    }
    line->l = line->toks.joinIntoString(" ");
    */
}

bool SeqFile::getMusHex(String s, int &value){
    if(s.length() < 2) return false;
    if(s[0] != '$') return false;
    s = s.substring(1).toLowerCase();
    if(!s.containsOnly("0123456789abcdef")) return false;
    value = s.getHexValue32();
    return true;
}

bool SeqFile::getMusInt(String s, int &value){
    if(s.length() < 1) return false;
    bool neg = false;
    if(s[0] == '-'){
        neg = true;
        s = s.substring(1);
    }
    if(!s.containsOnly("0123456789")) return false;
    value = s.getIntValue();
    if(neg) value = -value;
    return true;
}

int SeqFile::parseNormalParam(const MusLine *line, String s, String datasrc, 
        int datalen, bool allowNoteName, bool canon, bool wideDelay, bool *dataforce2){
    int value;
    s = s.toLowerCase();
    if(allowNoteName && datasrc == "fixed" && datalen == 1 && parseCanonNoteName(s, value)){
        if(value < 0 || value > 0x3F){
            line->Error("Note parameter " + s
                + " maps to invalid note value " + String(value) + "!");
            return -1;
        }
        //TODO this should only be supported for the "Target Pitch" parameter
        //of the portamento/sweepfrom/sweep command.
    }else if(!getMusHex(s, value) && !getMusInt(s, value)){
        line->Error("Expected decimal/hex integer, got " + s + "!");
        return -1;
    }
    if((datasrc == "fixed" && datalen == 1 && (value < -128 || value > 255))
            || (datasrc == "fixed" && datalen == 2 && (value < -0x8000 || value > 0xFFFF))
            || (datasrc == "variable" && (value < 0 || value > 0x7FFF))){
        line->Error("Integer value " + String(value) + " out of range!");
        return -1;
    }
    if(datasrc == "variable" && value > 0x7F && canon && !wideDelay){
        line->Error("Used canon non-w version of command, but value " 
            + String(value) + " requires wide variable length!");
        return -1;
    }
    if(datasrc == "variable" && value <= 0x7F && wideDelay){
        line->Info("Mistake in original sequence: sound programmer used "
            "wide version of command despite having too-small variable "
            "length value " + String(value) + ". This mistake is supported by "
            "SEQ64 and will be maintained in mus <-> com conversions.");
        if(dataforce2 != nullptr) *dataforce2 = true;
    }
    return value;
}

ValueTree SeqFile::parseMusCommand(const MusLine *line, int stype, int dtstype, 
        bool wrongSTypeErrors){
    ValueTree ret;
    String name = line->toks[0];
    //Besides #include and #define, these are all the hash commands in the
    //bicon executable.
    if(name == "#address" || name == "#label"){
        //#label label_name, label_name_2, ..., used for dyntables
        if(stype != 3){
            if(!wrongSTypeErrors) return ValueTree("wrongstype");
            return line->Error("#address/#label only allowed in dyntable!");
        }
        if(line->toks.size() < 2){
            return line->Error("Missing tokens after #address/#label!");
        }
        if(line->toks[1] == ","){
            return line->Error("There is no comma between a hash command and its "
                "first parameter, whereas there is between a normal command and "
                "its first parameter!");
        }
        ret = ValueTree("cmdlist");
        int t = 1;
        while(true){
            if(!isValidLabel(line->toks[t])){
                return line->Error("Invalid character(s) in label " + line->toks[t] + "!");
            }
            ValueTree command = makeDynTableCommand(-1, line->toks[t], dtstype, -1);
            if(!command.isValid()){
                return line->Error("Internal error with dyntable setup!");
            }
            command.setProperty(idTargetSection, line->toks[t], nullptr);
            ret.appendChild(command, nullptr);
            ++t;
            if(t == line->toks.size()) break;
            if(line->toks[t] != ","){
                return line->Error("Expected comma, got " + line->toks[t] + "!");
            }
            ++t;
            if(t == line->toks.size()){
                return line->Error("Spurious trailing comma!");
            }
        }
        return ret;
    }else if(name == "#string" || name == "#msg"){
        //#msg "Blah blah", referenced by dprint. Number seen to be 0 or 3,
        //definitely not string length. Perhaps debug console color or
        //verboseness/severity?
        if(stype != 5){
            if(!wrongSTypeErrors) return ValueTree("wrongstype");
            return line->Error("#string/#msg only valid in stype 5 (message)!");
        }
        String msg = line->l.substring(name.length()).trim();
        if(msg[0] != '"' || msg.getLastCharacter() != '"'){
            return line->Error("Message string must be quoted!");
        }
        msg = msg.substring(1, msg.length()-1);
        if(msg.length() == 0){
            line->Warning("Empty message!");
        }
        ret = ValueTree("message");
        ret.setProperty(idMessage, msg, nullptr);
        for(int i=0; i<msg.length(); ++i){
            ret.appendChild(makeBasicDataCommand(-1, (int)msg[i], "fixed", 1), nullptr);
        }
        ret.appendChild(makeBasicDataCommand(-1, 0, "fixed", 1), nullptr); //string null terminator
        return ret;
    }else if(name == "#pad"){
        //Insert the given number of zero bytes.
        if(stype != 6){
            if(!wrongSTypeErrors) return ValueTree("wrongstype");
            line->Warning("#pad anywhere besides Other Tables (6) is only partially supported!");
        }
        if(line->toks.size() != 2){
            return line->Error("#pad command must look like \"#pad u16val\"!");
        }
        int count = parseNormalParam(line, line->toks[1], "fixed", 2);
        if(importresult >= 2) return ValueTree();
        ret = ValueTree("cmdlist");
        for(int i=0; i<count; ++i){
            ret.appendChild(makeBasicDataCommand(-1, 0, "fixed", 1), nullptr);
        }
        return ret;
    }else if((name == "#u16" || name == "#word") && stype == 4){
        //#word: value16,value16, used for envelopes. Write 16-bit ints to com.
        if(line->toks.size() != 4 || line->toks[2] != ","){
            return line->Error("#u16/#word command in envelope must look like \"#word val,val\"!");
        }
        int rate, level;
        rate = parseNormalParam(line, line->toks[1], "fixed", 2);
        if(importresult >= 2) return ValueTree();
        level = parseNormalParam(line, line->toks[3], "fixed", 2);
        if(importresult >= 2) return ValueTree();
        return makeEnvelopeCommand(0, rate, level);
    }else if(name == "#u8" || name == "#byte" || name == "#variable" || name == "#wlen" 
            || name == "#u16" || name == "#word"){
        //#byte: presumably, write bytes to com.
        //#wlen: presumably, write variable length value to com. Due to how
        //commands are defined, this probably always writes the 2-byte version.
        //Note that, presumably, bicon did not have a concept of stype and
        //allowed these commands to appear anywhere. In fact, the .def file
        //probably translated normal commands into these commands.
        if(!((name == "#u8" || name == "#byte") && stype == 6)){
            if(!wrongSTypeErrors) return ValueTree("wrongstype");
            line->Warning("#u8/#byte/#variable/#wlen/#u16/#word other than #u16/#word "
                "in envelopes (4) and #u8/#byte in Other Tables (6) is only partially supported!");
        }
        if(line->toks.size() < 2){
            return line->Error("Missing tokens after " + name + "!");
        }
        if(line->toks[1] == ","){
            return line->Error("There is no comma between a hash command and its "
                "first parameter, whereas there is between a normal command and "
                "its first parameter!");
        }
        ret = ValueTree("cmdlist");
        int t = 1;
        while(true){
            String datasrc = (name == "#variable" || name == "#wlen") ? "variable" : "fixed";
            int datalen = (name == "#u16" || name == "#word") ? 2 : 1;
            int value = parseNormalParam(line, line->toks[t], datasrc, datalen, true);
            if(importresult >= 2) return ValueTree();
            ret.appendChild(makeBasicDataCommand(-1, value, datasrc, datalen), nullptr);
            ++t;
            if(t == line->toks.size()) break;
            if(line->toks[t] != ","){
                return line->Error("Expected comma, got " + line->toks[t] + "!");
            }
            ++t;
            if(t == line->toks.size()){
                return line->Error("Spurious trailing comma!");
            }
        }
        return ret;
    }else if(name == "#align2" || name == "#evenw" || name == "#align16" || name == "evenl"){
        //#evenw: align to even word (2 bytes).
        //#evenl: Previously thought it was "align to even long", i.e. 4 bytes,
        //but based on use in Hyrule Field master sequence, suspect it's "align
        //to even line", i.e. cacheline or DMA line, i.e. 16 bytes, for seqload.
        //Of course it's possible bicon got more hash commands between SF64 and
        //OoT.
        ret = ValueTree("align");
        ret.setProperty(idValue, (name == "#align16" || name == "#evenl") ? 16 : 2, nullptr);
        return ret;
    }else if(name == "#lprinton" || name == "#lprintoff"){
        //Function unknown, presumably printing lines as they're parsed or
        //some information from them? There's a commented out #lprinton at 
        //beginning of SFX seq
        if(line->toks.size() > 1){
            return line->Error("Spurious tokens after " + name + "!");
        }
        ret = ValueTree("lprint");
        ret.setProperty(idValue, name == "#lprinton", nullptr);
        return ret;
    }else if(name == "#bug"){
        //This is a bug in the original sequence. SEQ64 should parse this section
        //ignoring any errors as much as possible.
        if(line->toks.size() > 1){
            return line->Error("Spurious tokens after #bug (ironically)!");
        }
        ret = ValueTree("bug");
        return ret;
    }
    //All other types of commands and labels
    name = name.toLowerCase();
    String no_w_name = name.endsWithChar('w') ? name.dropLastCharacters(1) : name;
    bool canon = false;
    bool wideDelay = false;
    int noteValue = -1000;
    //Canon note commands
    if(no_w_name.length() == 5 && name[4] >= '0' && name[4] <= '2' && name[3] == 'b'
            && parseCanonNoteName(name.substring(0, 3), noteValue)){
        if(stype != 2){
            if(!wrongSTypeErrors) return ValueTree("wrongstype");
            return line->Error("Note command not allowed in current stype " + String(stype) + "!");
        }
        if(noteValue < 0 || noteValue > 0x3F){
            return line->Error("Note command maps to invalid note value " + String(noteValue) + "!");
        }
        canon = true;
        if(name.endsWithChar('w')) wideDelay = true;
        //Find appropriate note command
        for(int cmd=0; cmd<abi.getNumChildren(); ++cmd){
            ValueTree command = abi.getChild(cmd);
            if(command.getProperty(idAction).toString() != "Note") continue;
            if(!command.getChildWithProperty(idMeaning, "Note").isValid()) continue;
            if(!command.getChildWithProperty(idMeaning, "Velocity").isValid()) continue;
            if((name[4] == '1') == command.getChildWithProperty(idMeaning, "Gate Time").isValid()) continue;
            if((name[4] == '2') == command.getChildWithProperty(idMeaning, "Delay").isValid()) continue;
            ret = command.createCopy();
            break;
        }
        if(!ret.isValid()){
            return line->Error("Could not find ABI note definition for note command!");
        }
    }
    ValueTree possibleCmds("temp");
    if(!ret.isValid()){
        //Normal commands
        for(int cmd=0; cmd<abi.getNumChildren(); ++cmd){
            ValueTree command = abi.getChild(cmd);
            String nname = command.getProperty(idName,  "");
            String cname = command.getProperty(idCName, "");
            String oname = command.getProperty(idOName, "");
            nname = nname.toLowerCase();
            cname = cname.toLowerCase();
            oname = oname.toLowerCase();
            bool hasVariable = command.getChildWithProperty(idDataSrc, "variable").isValid();
            if(nname == name){
                (void)0; //just add to possible cmds below
            }else if(cname == name || oname == name){
                canon = true;
            }else if(hasVariable && (cname == no_w_name || oname == no_w_name)){
                canon = true;
                wideDelay = true;
            }else{
                continue;
            }
            possibleCmds.appendChild(command.createCopy(), nullptr);
        }
        if(possibleCmds.getNumChildren() == 0){
            //Maybe it's a label
            if(line->toks.size() > 1){
                return line->Error("Token " + line->toks[0] + " not recognized as a command, "
                    "but it has tokens after it, so it can't be a label, syntax error!");
            }
            if(!isValidLabel(line->toks[0])){
                return line->Error("Token " + line->toks[0] + " must be a label, but it "
                    "contains invalid characters!");
            }
            return ValueTree("label");
        }
    }
    if(stype < 0 || stype > 2){
        if(!wrongSTypeErrors) return ValueTree("wrongstype");
        return line->Error("Non-hash commands not allowed in stype " + String(stype) + "!");
    }
    if(!ret.isValid()){
        //Need to check stype after listing possible commands, because we need to
        //distinguish between the case where the command is completely
        //unrecognized and therefore it's a label, and the case where it's recognized
        //but in the wrong stype.
        for(int cmd=0; cmd<possibleCmds.getNumChildren(); ++cmd){
            ValueTree command = possibleCmds.getChild(cmd);
            if(        (stype == 0 && !command.getProperty(idValidInSeq))
                    || (stype == 1 && !command.getProperty(idValidInChn))
                    || (stype == 2 && !command.getProperty(idValidInTrk))){
                possibleCmds.removeChild(cmd, nullptr);
                --cmd;
            }
        }
        if(possibleCmds.getNumChildren() == 0){
            if(!wrongSTypeErrors) return ValueTree("wrongstype");
            return line->Error("Command not allowed in current stype " + String(stype) + "!");
        }
        if(possibleCmds.getNumChildren() >= 2){
            return line->Error("This could be multiple different commands, check the "
                "ABI definition! Note that there is no mus dialect setting for import, "
                "so if e.g. the community name of command A is the same as the canon "
                "name for command B, in the same stype, this would be ambiguous.");
        }
        ret = possibleCmds.getChild(0);
        possibleCmds.removeChild(0, nullptr); //ret will get added to structure later, can't have two parents
    }
    //Parse parameters
    int t = 1;
    for(int p=0; p<ret.getNumChildren(); ++p){
        ValueTree param = ret.getChild(p);
        String meaning = param.getProperty(idMeaning);
        String datasrc = param.getProperty(idDataSrc);
        int datalen = param.getProperty(idDataLen, 0);
        int value;
        if(datasrc == "constant"){
            //Constant doesn't take an argument, value stored in data len field
            param.setProperty(idValue, datalen, nullptr);
            continue;
        }
        if(meaning == "Note" && noteValue != -1000){
            //Canon note value encoded in command token, no separate parameter
            value = noteValue;
            param.setProperty(idValue, noteValue, nullptr);
        }else{
            if(t >= line->toks.size()){
                return line->Error("Expected comma and then " 
                    + param.getProperty(idName).toString() + ", got nothing!");
            }
            if(line->toks[t] != ","){
                if(t > 1){ //Comma immediately after command optional
                    return line->Error("Expected comma, not " + line->toks[t] + "!");
                }
            }else{
                ++t;
            }
            if(t >= line->toks.size()){
                return line->Error("Expected " + param.getProperty(idName).toString() 
                    + ", got nothing!");
            }
            String s = line->toks[t];
            bool dataforce2;
            if(meaning == "Absolute Address" || meaning == "Relative Address"){
                if(s.containsAnyOf("()")){
                    if(s.getLastCharacter() != ')'){
                        return line->Error("Invalid syntax in Ptr Self parameter!");
                    }
                    s = s.dropLastCharacters(1);
                    String num = s.fromFirstOccurrenceOf("(", false, false);
                    s = s.upToFirstOccurrenceOf("(", false, false);
                    value = parseNormalParam(line, num, "fixed", 1);
                    if(importresult >= 2) return ValueTree();
                    ret.setProperty(idTargetCmdByte, value, nullptr);
                }
                if(ret.getProperty(idAction).toString() == "Maybe Ptr" && (getMusHex(s, value) || getMusInt(s, value))){
                    line->Info("Maybe Ptr is a regular parameter, not a pointer");
                    param.setProperty(idValue, value, nullptr);
                }else if(!isValidLabel(s)){
                    return line->Error("Invalid character(s) in label " + s + "!");
                }else{
                    param.setProperty(idValue, s, nullptr);
                    ret.setProperty(idTargetSection, s, nullptr);
                }
                value = 0xFFFFFF;
            }else{
                dataforce2 = false;
                value = parseNormalParam(line, s, datasrc, datalen, 
                    true, canon, wideDelay, &dataforce2);
                if(importresult >= 2) return ValueTree();
                param.setProperty(idValue, value, nullptr);
                if(dataforce2 || line->dataforce2) param.setProperty(idDataForce2, true, nullptr);
            }
            ++t;
        }
        if(datasrc == "offset"){
            if(value == 0xFFFFFF){
                return line->Error("Address encoded in offset parameter is not supported!");
            }
            if(!ret.hasProperty(idCmdEnd)){
                return line->Error("Error with offset parameter in ABI definition of command!");
            }
            if(value < 0 || value + (int)ret.getProperty(idCmd) > (int)ret.getProperty(idCmdEnd)){
                return line->Error("Offset parameter " + String(value) + " out of range!");
            }
            //ret.setProperty(idCmd, value + (int)ret.getProperty(idCmd), nullptr); //idCmd is the base command, not the offset one
            ret.removeProperty(idCmdEnd, nullptr);
        }
    }
    if(t < line->toks.size()){
        return line->Error("Spurious extra tokens " + line->toks[t] + " (etc.) at end of command!");
    }
    if(ret.hasProperty(idCmdEnd)){
        return line->Error("Missing offset parameter in ABI definition of command!");
    }
    ret.setProperty(idHash, Random::getSystemRandom().nextInt(), nullptr);
    return ret;
}

void SeqFile::checkAddFutureSection(const MusLine *line, Array<FutureSection> &fs, 
        ValueTree section, ValueTree command){
    if(!command.hasProperty(idTargetSection)) return;
    String tgt = command.getProperty(idTargetSection);
    String action = command.getProperty(idAction);
    int stype = -1;
    if(action == "Jump" || action == "Branch" || action == "Call"){
        stype = section.getProperty(idSType);
    }else if(action == "Ptr Seq Header"){
        stype = 0;
    }else if(action == "Ptr Channel Header"){
        stype = 1;
    }else if(action == "Ptr Note Layer"){
        stype = 2;
    }else if(action == "Seq Hdr Call Table" || action == "Set Dyntable"){
        stype = 3;
    }else if(action == "Ptr Envelope"){
        stype = 4;
    }else if(action == "Ptr Message"){
        stype = 5;
    }else if(action == "Ptr Other Table" || action == "Ptr Self" || action == "Maybe Ptr"){
        stype = 6;
    }else{
        line->Error("Unknown future section stype!");
        return;
    }
    for(int sec=0; sec<structure.getNumChildren(); ++sec){
        ValueTree tmpsec2 = structure.getChild(sec);
        if(tmpsec2.getProperty(idLabelName, "").toString() == tgt){
            if(stype == 6) return;
            if((int)tmpsec2.getProperty(idSType) != stype){
                line->Error("Conflicting stype for target label " + tgt 
                    + ", section already parsed as " + tmpsec2.getProperty(idSType).toString()
                    + ", now referenced as " + String(stype) + "!");
            }
            return;
        }
        for(int cmd=0; cmd<tmpsec2.getNumChildren(); ++cmd){
            ValueTree command = tmpsec2.getChild(cmd);
            if(command.getProperty(idLabelName, "").toString() == tgt){
                if(stype == 6) return;
                if((int)tmpsec2.getProperty(idSType) != stype){
                    line->Error("Conflicting stype for target label " + tgt 
                        + ", found within section already parsed as " + tmpsec2.getProperty(idSType).toString()
                        + ", now referenced as " + String(stype) + "!");
                }
                return;
            }
        }
    }
    for(int i=0; i<fs.size(); ++i){
        if(fs[i].label == tgt){
            if(stype == 6) return;
            if(fs[i].stype == 6){
                //Change from ptr self type to real section stype
                fs.getReference(i).stype = stype;
                return;
            }
            if(fs[i].stype != stype){
                line->Error("Conflicting stype for target label " + tgt 
                    + ", previously referenced as " + String(fs[i].stype)
                    + ", now referenced as " + String(stype) + "!");
            }
            return;
        }
    }
    //dbgmsg("Added future section " + tgt + " stype " + String(stype));
    FutureSection f;
    f.label = tgt;
    f.stype = stype;
    f.questionable = section.hasProperty(idQuestionableSection);
    fs.add(f);
}

ValueTree SeqFile::createBlankSectionVT(int stype){
    ValueTree ret(stype == 0 ? "seqhdr" 
                : stype == 1 ? "chanhdr" 
                : stype == 2 ? "notelayer"
                : stype == 3 ? "dyntable"
                : stype == 4 ? "envelope"
                : stype == 5 ? "message"
                : stype == 6 ? "table"
                : stype == 7 ? "align"
                : "unknown");
    ret.setProperty(idSType, stype, nullptr);
    return ret;
}

////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////// importMus //////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


int SeqFile::importMus(File musfile){
    seqname = musfile.getFileNameWithoutExtension();
    structure = ValueTree("structure");
    Random::getSystemRandom().setSeedRandomly();
    importresult = 0;
    //Load original input file
    OwnedArray<MusLine> lines;
    MusLine initIncludeLine(this, "#include \"" + musfile.getFullPathName() + "\"", 
        musfile.getFullPathName(), 0);
    loadMusFileLines(lines, musfile.getFullPathName(), 0, &initIncludeLine);
    //Handle #include and #define.
    StringPairArray defs;
    int ln;
    for(ln=0; ln<lines.size(); ++ln){
        MusLine *line = lines[ln];
        if(line->l.startsWith("#include ")){
            String path = line->l.substring(9).trim().unquoted();
            loadMusFileLines(lines, path, ln, line);
            if(importresult >= 2) return 2;
        }else if(line->l.startsWith("#define ")){
            //#define TOKEN value, used widely in SFX seqs. File defining SFX
            //names-to-numbers mapping can be shared by both mus and C code.
            if(line->l.containsAnyOf("()")){
                line->Error("This is not the C preprocessor, you can only do \"#define key value\", not \"#define macro(blah) something_with_blah\"!");
                return 2;
            }
            if(line->toks.size() != 3){
                line->Error("Expected key and value (2 other tokens) on #define!");
                return 2;
            }
            String key = line->toks[1];
            String value = line->toks[2];
            if(!isValidDefineKey(key)){
                line->Error("#define key \"" + key + "\" contains invalid characters!");
                return 2;
            }
            if(!isValidDefineValue(value)){
                line->Error("#define value \"" + value + "\" contains invalid characters!");
                return 2;
            }
            if(defs.containsKey(key)){
                line->Error("Duplicate definition of key \"" + key + "\", now as " 
                    + value + ", previously as " + defs[key] + "!");
                return 2;
            }
            defs.set(key, value);
        }else{
            substituteDefines(defs, line);
            if(importresult >= 2) return 2;
            continue;
        }
        lines.remove(ln);
        --ln;
    }
    dbgmsg(String(ln) + " lines in " + musfile.getFileName()
        + " and its included files, besides empty/comments/#include/#define");
    //Replace @ labels
    dbgmsg("Replacing @ labels...");
    String localParentLabel = "";
    for(ln=0; ln<lines.size(); ++ln){
        ValueTree command = parseMusCommand(lines[ln], 0, -1, false);
        if(importresult >= 2 || !command.isValid()) return 2;
        if(command.getType().toString() == "label" && !lines[ln]->l.containsChar('@')){
            localParentLabel = lines[ln]->toks[0];
        }
        if(lines[ln]->l.containsChar('@')){
            lines[ln]->l = lines[ln]->l.replace("@", localParentLabel);
            lines[ln]->Tokenize();
        }
    }
    //Init first section
    ln = 0;
    int stype = 0, dtstype = -1, dtdynstype = -1;
    ValueTree section = createBlankSectionVT(0);
    section.setProperty(idAddress, ln, nullptr);
    structure.appendChild(section, nullptr);
    dbgmsg("Parsing initial section in sequence, stype 0");
    //Data structures for parse results
    Array<FutureSection> futuresecs;
    StringArray alllabels;
    altnames.clear();
    String curLabel = "";
    bool lprint = false;
    while(true){
        MusLine *line;
        ValueTree command;
        String type;
        bool endSection = false, dontAdvanceLine = false;
        if(ln >= lines.size()){
            if(section.hasProperty(idQuestionableSection)){
                dbgmsg("Ran into end of sequence while parsing unused code, "
                    "calling that the end of the unused code");
            }else{
                dbgmsg("Ran into end of sequence while parsing normal code, "
                    "normally this is an error but in some technical sequences it's OK");
                importresult |= 1;
            }
            dontAdvanceLine = true;
            endSection = true;
        }
        if(!endSection){
            line = lines[ln];
            if(line->toks.isEmpty()){
                line->Error("No tokens!");
                return 2;
            }
            if(line->used){
                //Check if what we ran into is an existing section
                ValueTree latersec = structure.getChildWithProperty(idAddress, ln);
                if(!latersec.isValid()){
                    line->Error("Internal error, line already parsed before!");
                    return 2;
                }
                if(stype == 3 || stype == 4 || stype == 6){
                    //Ran into an existing section, means end of current section
                    dbgmsg("Detected end of " + section.getProperty(idLabelName).toString()
                        + " due to already parsed line " + line->l);
                }else if(section.hasProperty(idQuestionableSection)){
                    line->Info("Ran into another section while parsing unused code, "
                        "calling that the end of the unused code");
                }else{
                    //If the stype is the same, it's a continuation of the current section
                    if((int)latersec.getProperty(idSType) != stype){
                        line->Error("Ran into existing section, but inconsistent stypes!");
                        return 2;
                    }
                    //Merge that section with this one
                    for(int i=0; i<latersec.getNumChildren(); ++i){
                        section.appendChild(latersec.getChild(i).createCopy(), nullptr);
                    }
                    structure.removeChild(latersec, nullptr);
                }
                dontAdvanceLine = true;
                endSection = true;
            }
        }
        if(!endSection){
            if(lprint){
                //Actual function of #lprinton/#lprintoff unknown, this is a guess.
                line->Print();
            }
            command = parseMusCommand(line, stype, dtstype, true);
            if(importresult >= 2 || !command.isValid()) return 2;
            type = command.getType().toString();
        }
        if(endSection){
            (void)0; //skip all the below
        }else if(
                ( ((stype == 3 || stype == 6) && type != "cmdlist") ||
                  (stype == 4 && command.getProperty(idAction, "") != "Envelope Point") )
                && !(type == "label" && !section.hasProperty(idLabelName)) ){
            //These stypes don't have their own end markers, we can only detect
            //them by something else starting.
            dbgmsg("Detected end of " + section.getProperty(idLabelName).toString()
                + " due to different-type line " + line->l);
            dontAdvanceLine = true;
            endSection = true;
        }else if(type == "wrongstype"){
            line->Error("Internal error with stype checking!");
            return 2;
        }else if(type == "label"){
            //Label
            String lbl = line->toks[0];
            if(alllabels.contains(lbl)){
                line->Error("Redefinition of label " + lbl + "!");
                return 2;
            }
            alllabels.add(lbl);
            if(!curLabel.isEmpty()){
                altnames.set(lbl, curLabel);
            }else{
                curLabel = lbl;
                if(section.getNumChildren() == 0){
                    section.setProperty(idLabelName, curLabel, nullptr);
                }
            }
            //Check if we ran into a future section
            for(int i=0; i<futuresecs.size(); ++i){
                if(futuresecs[i].label == lbl){
                    if(futuresecs[i].stype != stype && futuresecs[i].stype != 6){
                        line->Error("Ran into future section, but inconsistent stype!");
                        return 2;
                    }
                    futuresecs.remove(i);
                    break;
                }
            }
        }else if(type == "lprint"){
            lprint = command.getProperty(idValue);
        }else if(type == "bug"){
            line->Info("Setting current section to buggy mode (ignoring some types of errors)");
            section.setProperty(idQuestionableSection, true, nullptr);
        }else if(type == "align"){
            //Add as a new section
            command.setProperty(idAddress, ln, nullptr);
            structure.appendChild(command, nullptr);
            endSection = true;
            curLabel = "";
        }else if(type == "cmdlist"){
            for(int i=0; i<command.getNumChildren(); ++i){
                ValueTree cmd = command.getChild(i).createCopy();
                if(!curLabel.isEmpty()){
                    cmd.setProperty(idLabelName, curLabel, nullptr);
                    curLabel = "";
                }
                checkAddFutureSection(line, futuresecs, section, cmd);
                section.appendChild(cmd, nullptr);
            }
            curLabel = "";
        }else if(type == "message"){
            if(section.getNumChildren() > 0){
                line->Error("Message must appear by itself in a section!");
                return 2;
            }
            if(section.getProperty(idLabelName, "").toString().isEmpty()){
                line->Error("Message must be preceded by message label!");
                return 2;
            }
            section.setProperty(idMessage, command.getProperty(idMessage), nullptr);
            for(int i=0; i<command.getNumChildren(); ++i){
                section.appendChild(command.getChild(i).createCopy(), nullptr);
            }
            endSection = true;
            curLabel = "";
        }else if(type == "command"){
            //Normal command
            if(!curLabel.isEmpty()){
                command.setProperty(idLabelName, curLabel, nullptr);
            }
            command.setProperty(idAddress, ln, nullptr);
            section.appendChild(command, nullptr);
            checkAddFutureSection(line, futuresecs, section, command);
            if(importresult >= 2) return 2;
            String action = command.getProperty(idAction);
            if(action == "End of Data" || action == "Jump"){
                endSection = true;
            }
            curLabel = "";
        }else{
            line->Error("Internal error, unknown parsed command type " + type + "!");
            return 2;
        }
        if(!dontAdvanceLine){
            line->used = true;
            ++ln;
        }
        if(endSection && futuresecs.size() > 0){
            //Parse any sections other than dyntables and self tables if possible.
            int fs;
            for(fs=futuresecs.size()-1; fs > 0; --fs){ //stop at 0 if no other choices
                if(futuresecs[fs].stype != 3 && futuresecs[fs].stype != 6) break;
            }
            //Find the start of the future section.
            for(ln=0; ln<lines.size(); ++ln){
                if(lines[ln]->l == futuresecs[fs].label) break;
            }
            if(ln == lines.size()){
                dbgmsg("Could not find pointed-to section with label " 
                    + futuresecs[fs].label + " stype " + String(futuresecs[fs].stype) + "!");
                return 2;
            }
            curLabel = "";
            stype = futuresecs[fs].stype;
            section = createBlankSectionVT(stype);
            section.setProperty(idAddress, ln, nullptr);
            if(futuresecs[fs].questionable){
                section.setProperty(idQuestionableSection, true, nullptr);
            }
            structure.appendChild(section, nullptr);
            dbgmsg("Parsing section " + futuresecs[fs].label + " stype " + String(stype));
            if(stype == 3){
                StringArray refs;
                //Find all commands which refer to this dyntable
                for(int s=0; s<structure.getNumChildren(); ++s){
                    ValueTree sec = structure.getChild(s);
                    for(int c=0; c<sec.getNumChildren(); ++c){
                        if(sec.getChild(c).getProperty(idTargetSection, "").toString()
                                == futuresecs[fs].label){
                            refs.add(sec.getChild(c).getProperty(idHash).toString());
                        }
                    }
                }
                if(!findDynTableType(structure.getNumChildren()-1, refs)) return 2;
                dtstype = section.getProperty(idDynTableSType, -1);
                if(dtstype == 3){
                    dbgmsg("Double-dynamic commands not yet fully supported!");
                    return 2;
                }else if(dtstype != 0 && dtstype != 1 && dtstype != 2 && dtstype != 6){
                    dbgmsg("Internal error in dyntable setup!");
                    return 2;
                }
                dtdynstype = -1;
            }
            futuresecs.remove(fs);
        }else if(endSection){
            //Seems like we're done parsing. Check for unused lines.
            section.removeProperty(idQuestionableSection, nullptr);
            bool continueParsing = false;
            for(ln=0; ln<lines.size(); ++ln){
                if(lines[ln]->used) continue;
                //Check for special commands.
                if(lines[ln]->l.startsWith("#align") || lines[ln]->l.startsWith("#even")){
                    curLabel = "";
                    section = structure.getChild(0);
                    section.setProperty(idQuestionableSection, true, nullptr);
                    stype = 0;
                    dtstype = -1;
                    dtdynstype = -1;
                    continueParsing = true;
                    break;
                }
                //Check if previous line is a jump.
                for(int s=0; s<structure.getNumChildren(); ++s){
                    section = structure.getChild(s);
                    ValueTree prev = section.getChildWithProperty(idAddress, ln-1);
                    if(prev.isValid() && prev.getProperty(idAction).toString() == "Jump"){
                        break;
                    }
                    section = ValueTree();
                }
                if(section.isValid()){
                    lines[ln]->Info("Unused line after jump, continuing previous section");
                    //Make the unused line be the next command of this section.
                    section.setProperty(idQuestionableSection, true, nullptr);
                    curLabel = "";
                    stype = section.getProperty(idSType);
                    dtstype = -1; //Jumps can't exist in dyntables
                    dtdynstype = -1;
                    continueParsing = true;
                    break;
                }
                //Try parsing the next few lines as each stype, since many
                //commands are only valid in some.
                Array<int> validSTypes;
                String stypesstring;
                for(stype=0; stype<=6; ++stype){
                    bool okay = true;
                    for(int tmpln=ln; tmpln<lines.size() && !lines[tmpln]->used; ++tmpln){
                        command = parseMusCommand(lines[tmpln], stype, 1, false);
                        if(importresult >= 2 || !command.isValid()){
                            dbgmsg("Syntax error--not wrong stype--encountered during speculative parsing!");
                            return 2;
                        }
                        type = command.getType().toString();
                        if(type == "wrongstype"){
                            okay = false;
                            break;
                        }
                        String action = command.getProperty(idAction, "");
                        if(action == "End of Data" || action == "Jump"){
                            break;
                        }
                    }
                    if(okay){
                        validSTypes.add(stype);
                        stypesstring += String(stype) + ", ";
                    }
                }
                if(validSTypes.size() == 0){
                    lines[ln]->Warning("Speculative parsing failed to determine stype. Ignoring line");
                    lines[ln]->used = true;
                }else if(validSTypes.size() >= 2){
                    lines[ln]->Warning("Speculative parsing resulted in multiple "
                        "possible stypes: " + stypesstring + ". Ignoring line");
                    lines[ln]->used = true;
                }else{
                    stype = validSTypes[0];
                    lines[ln]->Info("Speculative parsing deduced stype " + String(stype));
                    curLabel = "";
                    dtstype = (stype == 3) ? 1 : -1; //Hopefully no unused dyntable, but if so probably channel
                    dtdynstype = -1;
                    section = createBlankSectionVT(stype);
                    section.setProperty(idAddress, ln, nullptr);
                    section.setProperty(idQuestionableSection, true, nullptr);
                    structure.appendChild(section, nullptr);
                    continueParsing = true;
                    break;
                }
            }
            if(!continueParsing) break;
        }
    }
    //Sort sections by "address" (line index after includes)
    SectionSorter sorter;
    structure.sort(sorter, nullptr, false);
    //Turn idTargetSection from label names to section numbers and command hashes
    for(int j=0; j<structure.getNumChildren(); ++j){
        ValueTree tmpsec2 = structure.getChild(j);
        for(int k=0; k<tmpsec2.getNumChildren(); ++k){
            ValueTree cmd = tmpsec2.getChild(k);
            if(cmd.hasProperty(idTargetSection)){
                String tgt = cmd.getProperty(idTargetSection);
                if(altnames.containsKey(tgt)) tgt = altnames[tgt];
                bool found = false;
                for(int s=0; !found && s<structure.getNumChildren(); ++s){
                    section = structure.getChild(s);
                    if(section.getProperty(idLabelName) == tgt){
                        cmd.setProperty(idTargetSection, s, nullptr);
                        if(cmd.hasProperty(idTargetCmdByte)){
                            if(section.getNumChildren() == 0){
                                dbgmsg("Ptr Self has label of empty section?!");
                                return 2;
                            }
                            cmd.setProperty(idTargetHash, 
                                section.getChild(0).getProperty(idHash), nullptr);
                        }
                        found = true;
                        break;
                    }
                    for(int c=0; c<section.getNumChildren(); ++c){
                        ValueTree command = section.getChild(c);
                        if(command.getProperty(idLabelName) == tgt){
                            cmd.setProperty(idTargetSection, s, nullptr);
                            cmd.setProperty(idTargetHash, command.getProperty(idHash), nullptr);
                            found = true;
                            break;
                        }
                    }
                }
                if(!found){
                    dbgmsg("Could not find section or command with label " + tgt + "!");
                    return 2;
                }
            }
        }
    }
    return importresult;
}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////// exportMus functions /////////////////////////////
////////////////////////////////////////////////////////////////////////////////

void SeqFile::assignTSection(ValueTree sec, int tsecnum){
    if(!sec.isValid()){
        dbgmsg("Invalid section in assignTSection for tsecnum = " + String(tsecnum) + "!");
        importresult |= 2;
        return;
    }
    if(!sec.hasProperty(idTSection)){
        sec.setProperty(idTSection, tsecnum, nullptr);
    }else{
        return;
    }
    for(int i=0; i<sec.getNumChildren(); ++i){
        ValueTree command = sec.getChild(i);
        if(command.hasProperty(idTargetSection)){
            assignTSection(structure.getChild((int)command.getProperty(idTargetSection)), tsecnum);
        }
    }
}

int SeqFile::assignAllTSections(){
    ValueTree section = structure.getChild(0);
    section.setProperty(idTSection, -1, nullptr);
    //Commands in main section
    int tsecnum = -1; 
    bool readyfornewtsec = true;
    for(int cmd=0; cmd<section.getNumChildren(); ++cmd){
        ValueTree command = section.getChild(cmd);
        if(readyfornewtsec && command.getProperty(idAction).toString() == "Ptr Channel Header"){
            ++tsecnum;
            command.setProperty(idTSection, tsecnum, nullptr);
            readyfornewtsec = false;
        }else if(!readyfornewtsec && command.getChildWithProperty(idMeaning, "Delay").isValid()){
            readyfornewtsec = true;
        }
        if(command.hasProperty(idTargetSection)){
            assignTSection(structure.getChild((int)command.getProperty(idTargetSection)), tsecnum);
        }
    }
    return tsecnum+1;
}

void SeqFile::generateTSecNames(int num_tsections, int dialect){
    tsecnames_generated = true;
    tsecnames.clear();
    for(int i=0; i<num_tsections; ++i){
        String name;
        if(dialect >= 2){
            if(num_tsections == 1){
                name = "A";
            }else{
                name = (i == 0) ? String("intro") : String::charToString('A' + i - 1);
            }
        }else{
            name = "tsec" + String(i);
        }
        tsecnames.add(name);
    }
}

String SeqFile::getSecNamePrefix(int dialect, ValueTree section){
    int tsecnum = section.getProperty(idTSection, -1);
    if(tsecnum < 0){
        return (dialect >= 2) ? "_" : "";
    }
    if(tsecnum >= tsecnames.size()){
        dbgmsg("Invalid tsecnum " + String(tsecnum) + "!");
        importresult = 2;
        return "Error";
    }
    String name = tsecnames[tsecnum];
    if(dialect >= 2){
        name = "_" + seqname + "_" + name;
    }
    return name;
}

void SeqFile::registerExistingLabelName(ValueTree section){
    String name = section.getProperty(idLabelName).toString();
    if(alllabelnames.contains(name)){
        dbgmsg("Duplicate existing label name " + name + "!");
        importresult |= 2;
    }else{
        alllabelnames.add(name);
    }
}

void SeqFile::setLabelNameAuto(ValueTree target, String name, String extra){
    if(extra.isEmpty()){
        dbgmsg("Internal error in setLabelNameAuto!");
        importresult |= 2;
        return;
    }
    while(name.isEmpty() || alllabelnames.contains(name)){
        String name2 = name + extra;
        //dbgmsg("Duplicate generated name " + name + ", changing to " + name2);
        name = name2;
    }
    alllabelnames.add(name);
    target.setProperty(idLabelName, name, nullptr);
    target.setProperty(idLabelNameAuto, true, nullptr);
}

void SeqFile::nameSections(int dialect){
    //Main section
    ValueTree section = structure.getChild(0);
    if(section.hasProperty(idLabelName) && !section.hasProperty(idLabelNameAuto)){
        registerExistingLabelName(section);
    }else{
        setLabelNameAuto(section, dialect >= 2 ? "_" + seqname : "_start");
    }
    //Rest of sections
    for(int sec=1; sec<structure.getNumChildren(); sec++){
        section = structure.getChild(sec);
        if(section.hasProperty(idLabelName) && !section.hasProperty(idLabelNameAuto)){
            registerExistingLabelName(section);
            continue;
        }
        int stype = section.getProperty(idSType);
        String name = getSecNamePrefix(dialect, section);
        if(stype == 1 || stype == 2){
            name += "_" + String(dialect >= 2 ? "sub" : "chn") + section.getProperty(idChannel).toString();
        }
        if(stype == 2){
            name += "_" + String(dialect >= 2 ? "note" : "ly") + section.getProperty(idLayer).toString();
        }
        if(stype == 3){
            name += "_tbl_" + String(sec);
        }else if(stype == 4){
            if(dialect >= 2){
                name = "ENVE_" + seqname + String(sec);
            }else{
                name += "_env" + String(sec);
            }
        }else if(stype == 5){
            if(dialect >= 2){
                name = "_message_" + String(sec);
            }else{
                name += "_msg" + String(sec);
            }
        }else if(stype == 6){
            if(dialect >= 2){
                name = "_extbl_" + String(sec);
            }else{
                name += "_ldstbl" + String(sec);
            }
        }else if(section.hasProperty(idSrcCmdRef)){
            name += "_" + String(dialect >= 2 ? "pat" : "call") 
                + section.getProperty(idSrcCmdRef).toString();
        }
        setLabelNameAuto(section, name, "_" + String(sec));
    }
}

void SeqFile::nameTargetCommands(int dialect){
    //Find all commands pointed at
    Array<int> targethashes;
    for(int sec=0; sec<structure.getNumChildren(); ++sec){
        ValueTree section = structure.getChild(sec);
        for(int cmd=0; cmd<section.getNumChildren(); ++cmd){
            ValueTree command = section.getChild(cmd);
            if(command.hasProperty(idTargetHash)){
                targethashes.addIfNotAlreadyThere(command.getProperty(idTargetHash));
            }
        }
    }
    //Name them
    for(int sec=0; sec<structure.getNumChildren(); ++sec){
        ValueTree section = structure.getChild(sec);
        for(int cmd=0; cmd<section.getNumChildren(); ++cmd){
            ValueTree command = section.getChild(cmd);
            if(command.hasProperty(idLabelName) && !command.hasProperty(idLabelNameAuto)){
                registerExistingLabelName(command);
                continue;
            }
            if(command.hasProperty(idTSection)){
                //In seq header, first command of each tsection
                setLabelNameAuto(command, getSecNamePrefix(dialect, command));
            }else if(targethashes.contains(command.getProperty(idHash))){
                //Normal target command
                setLabelNameAuto(command, 
                    section.getProperty(idLabelName).toString() + "_" + String(cmd));
            }
        }
    }
}

int SeqFile::countTicks(ValueTree sec, int starthash, int *lastdelay){
    do{
        if(!sec.isValid()){
            dbgmsg("countTicks(): invalid section!");
            break;
        }
        if(starthash == 0 && sec.hasProperty(idTicks)){
            if(lastdelay != nullptr) *lastdelay = sec.getProperty(idLastDelay);
            return sec.getProperty(idTicks);
        }
        int stype = sec.getProperty(idSType);
        if(stype >= 3) return 0;
        int ticks = 0;
        int lastnotedelay = -1;
        int i=0;
        if(starthash != 0){
            ValueTree command = sec.getChildWithProperty(idHash, starthash);
            if(!command.isValid()){
                dbgmsg("countTicks(): target hash not found! Sec "
                    + sec.getProperty(idLabelName).toString() + " hash "
                    + String(starthash));
                break;
            }
            i = sec.indexOf(command);
        }
        bool error = false;
        for(; i<sec.getNumChildren() && !error; ++i){
            ValueTree command = sec.getChild(i);
            String action = command.getProperty(idAction).toString();
            ValueTree delayparam = command.getChildWithProperty(idMeaning, "Delay");
            if(delayparam.isValid()){
                int delay = delayparam.getProperty(idValue);
                ticks += delay;
                if(action == "Note") lastnotedelay = delay;
            }else if(action == "Note"){
                if(stype != 2){
                    dbgmsg("countTicks(): note in stype" + String(stype) + "!");
                    error = true; break;
                }else if(lastnotedelay < 0){
                    dbgmsg("countTicks(): note uses last delay but last delay is undefined! Sec "
                        + sec.getProperty(idName).toString() + " " + sec.getProperty(idLabelName).toString()
                        + " cmd " + String(i));
                    error = true; break;
                }
                ticks += lastnotedelay;
            }
            if(action == "Call"){
                int ld = -1;
                ValueTree subsec = structure.getChild((int)command.getProperty(idTargetSection));
                int sh = command.getProperty(idTargetHash, 0);
                int t = countTicks(subsec, sh, &ld);
                if(ld < 0) { error = true; break; }
                ticks += t;
                lastnotedelay = ld;
            }
        }
        if(error) break;
        if(starthash == 0) sec.setProperty(idTicks, ticks, nullptr);
        sec.setProperty(idLastDelay, lastnotedelay, nullptr);
        if(lastdelay != nullptr) *lastdelay = lastnotedelay;
        return ticks;
    }while(false);
    if(lastdelay != nullptr) *lastdelay = -1;
    importresult |= 1;
    return 0;
}

String SeqFile::getCommandMusLine(int sec, ValueTree section, ValueTree command, 
        int dialect, int stype, int secticks){
    if(stype < 0 || stype >= 3){
        dbgmsg("Requested command to mus line for invalid stype " + String(stype) + "!");
        importresult |= 2;
        return "ERROR!\n";
    }
    String ret;
    if(command.hasProperty(idLabelName)){
        ret += command.getProperty(idLabelName).toString() + "\n";
    }
    String action = command.getProperty(idAction);
    if(action == "End of Data" && (dialect == 2 || dialect == 4) 
            && stype == 2 && !section.hasProperty(idSrcCmdRef)){
        ret += ";steps: " + String(secticks) + "\n";
    }
    ret += "    ";
    String name;
    bool noteandcanon = false;
    if(action == "Note" && dialect >= 2){
        noteandcanon = true;
        //Convert note to note name. smf2mus always outputted "sharp" notes only,
        //but mml64.def supported import of sharp and flat notes (e.g. "CS" = "DF").
        static const char *const notenames[12] = {
            "CN", "CS", "DN", "DS", "EN", "FN", "FS", "GN", "GS", "AN", "AS", "BN"
        };
        int n = 9 + (int)command.getChildWithProperty(idMeaning, "Note").getProperty(idValue);
        int octave = n / 12;
        n -= octave * 12;
        name = notenames[n] + String(octave);
        //Get mode
        int bmode = 0;
        ValueTree param = command.getChildWithProperty(idMeaning, "Gate Time");
        if(!param.isValid() || param.getProperty(idDataSrc).toString() == "constant"){
            //notedv, a.k.a. BMode 1, a.k.a. "gate 100%"
            bmode = 1;
        }
        param = command.getChildWithProperty(idMeaning, "Delay");
        if(!param.isValid() || param.getProperty(idDataSrc).toString() == "constant"){
            //notevg, a.k.a. BMode 2.
            //Note that mml64.def incorrectly labels this as "velo before"
            //and has note definitions where the parameters are "wlen,byte"
            //meaning delay and gate length (velocity carried over from last note).
            //This is wrong. SM64 decomped source code, plus the fact that
            //SEQ64 has been using these notes for years and producing correct
            //results, proves that it's delay kept from the last note and 
            //velocity+gate specified in the command.
            jassert(bmode == 0); //Can't be both mode 1 and 2
            bmode = 2;
        }
        name += "B" + String(bmode);
    }else{
        name = command.getProperty(idName, "Error");
        if((dialect & ~1) == 2){
            name = command.getProperty(idCName, command.getProperty(idOName, name));
        }else if((dialect & ~1) == 4){
            name = command.getProperty(idOName, command.getProperty(idCName, name));
        }
    }
    String params;
    String comment;
    String comma = (dialect & 1) ? "," : ", ";
    for(int p=0; p<command.getNumChildren(); ++p){
        ValueTree param = command.getChild(p);
        String meaning = param.getProperty(idMeaning, "None");
        if(meaning == "Note" && noteandcanon) continue;
        String datasrc = param.getProperty(idDataSrc);
        int datalen = param.getProperty(idDataLen, 0);
        int value = param.getProperty(idValue, 8888);
        bool isaddr = (meaning == "Absolute Address" || meaning == "Relative Address");
        if(isaddr && action == "Maybe Ptr" && !command.hasProperty(idTargetSection)){
            //Maybe Ptr wasn't a pointer
            isaddr = false;
        }
        if(isaddr){
            ValueTree target = structure.getChild(command.getProperty(idTargetSection, -1));
            if(!target.isValid()){
                dbgmsg(name + " cmd (sec " + String(sec) + " pointing to invalid section "
                    + command.getProperty(idTargetSection, -1).toString() + "!");
                importresult |= 2;
                return "ERROR\n";
            }
            if(command.hasProperty(idTargetHash)){
                target = target.getChildWithProperty(idHash, command.getProperty(idTargetHash));
                if(!target.isValid()){
                    dbgmsg(name + " cmd (sec " + String(sec) + " pointing to section "
                        + command.getProperty(idTargetSection, -1).toString() + " invalid cmd hash!");
                    importresult |= 2;
                    return "ERROR\n";
                }
            }
            params += comma + target.getProperty(idLabelName).toString();
            if(command.hasProperty(idTargetCmdByte)){
                params += "(" + command.getProperty(idTargetCmdByte).toString() + ")";
            }
        }else if(datasrc == "fixed"){
            if(datalen == 2){
                params += comma + "$" + hex((uint16_t)value);
            }else{
                if(datalen == 1 && value >= 0x80 && (action == "CC or CC Group" 
                        || action == "Chn Transpose" || action == "Ly Transpose")){
                    value -= 0x100;
                }
                params += comma + String(value);
            }
        }else if(datasrc == "variable"){
            if(value >= 0x80 || param.hasProperty(idDataForce2)){
                if(dialect >= 2){
                    name += (action == "Note") ? "W" : "w";
                }else{
                    if(value < 0x80 && param.hasProperty(idDataForce2)){
                        comment += " ; FORCE LEN 2";
                    }
                }
            }
            params += comma + String(value);
        }else if(datasrc == "offset"){
            params += comma + String(value);
        }else if(datasrc == "constant"){
            //do nothing
        }else{
            dbgmsg("datasrc error!");
            importresult |= 2;
            return "ERROR\n";
        }
    }
    if(noteandcanon && (dialect & 1)) name = name.toLowerCase();
    ret += name + ((dialect & 1) ? "" : "\t") + params + comment + "\n";
    if(action == "End of Data" && dialect == 0){
        ret += "; Section total ticks: " + String(secticks) + "\n";
    }
    return ret;
}

int SeqFile::findDynTableIndex(int sec){
    for(int s=0; s<structure.getNumChildren(); ++s){
        ValueTree section = structure.getChild(s);
        if((int)section.getProperty(idSType, -1) != 3) continue;
        if((int)section.getProperty(idDynTableSType, -1) != 1) continue;
        for(int cmd=0; cmd<section.getNumChildren(); ++cmd){
            if((int)section.getChild(cmd).getProperty(idTargetSection) == sec){
                return cmd;
            }
        }
    }
    return -1;
}

////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////// exportMus //////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

int SeqFile::exportMus(File musfile, int dialect){
    if(!musfile.hasWriteAccess()){
        dbgmsg("No write access to " + musfile.getFullPathName() + "!");
        return 2;
    }
    FileOutputStream fos(musfile);
    if(fos.failedToOpen()){
        dbgmsg("Couldn't open file " + musfile.getFullPathName() + " for writing!");
        return 2;
    }
    fos.setPosition(0);
    fos.truncate();
    importresult = 0;
    //Assign tsections, tsection names, section names, command names
    int num_tsections = assignAllTSections();
    if(tsecnames.size() != num_tsections){
        generateTSecNames(num_tsections, dialect);
    }else{
        //If the tsection names came from the MIDI, they could be inconsistent, check
        for(int i=0; i<tsecnames.size(); ++i){
            if(tsecnames[i].isEmpty() || !isValidLabel(tsecnames[i])){
                dbgmsg("Invalid tsec name \"" + tsecnames[i] + "\" for tsec " + String(i) 
                    + ", internal error or bad marker in MIDI!");
                return 2;
            }
            for(int j=i+1; j<tsecnames.size(); ++j){
                if(tsecnames[i].equalsIgnoreCase(tsecnames[j])){
                    dbgmsg("Repeated tsec name \"" + tsecnames[i] + "\" for tsec " + String(i) 
                        + " and " + String(j) + ", internal error or bad marker in MIDI!");
                    return 2;
                }
            }
        }
    }
    alllabelnames.clear();
    nameSections(dialect);
    nameTargetCommands(dialect);
    //Write data
    String out;
    time_t t = time(nullptr); 
    struct tm *curtime = localtime(&t);
    if(dialect == 2 || dialect == 4){
        out += ";****************************************\n";
        out += ";\tmusic data (format : mus)\n";
        out += ";\tconverted by SEQ64 Ver 2.0, https://github.com/sauraen/seq64\n";
        out += ";\t"; out += asctime(curtime);
        out += ";****************************************\n\n\n";
    }else if(dialect == 3 || dialect == 5){
        out += ";**********************************************\n";
        out += ";\t\tGAME NAME\n";
        out += ";\t\tSE SEQUENCE DATA\n";
        out += ";\t\t" + seqname.toUpperCase() + "\n";
        out += ";\t\t"; char s[100]; strftime(s, 100, "%Y.%m.%d(%a)\n", curtime); out += s;
        out += ";\t\tYOUR NAME HERE\n"; //Could have read your system username but didn't want to dox you
        out += ";**********************************************\n\n";
    }else{
        out += "; Nintendo 64 Music Macro Language (Audioseq) (.mus) sequence: " + seqname + "\n";
        out += "; Converted by SEQ64 V2.0 [https://github.com/sauraen/seq64]\n\n";
    }
    int tsecnum = -1;
    int sectiongroup = -1;
    for(int sec=0; sec<structure.getNumChildren(); ++sec){
        ValueTree section = structure.getChild(sec);
        if(section.getType().toString() == "align"){
            if((int)section.getProperty(idValue) == 16){
                out += (dialect >= 2) ? "#evenl" : "#align16";
            }else{
                out += (dialect >= 2) ? "#evenw" : "#align2";
            }
            out += "\n\n";
            continue;
        }
        int stype = section.getProperty(idSType);
        if(sectiongroup == -1){
            sectiongroup = 0;
            if(dialect >= 2){
                //match incorrect spelling in smf2mus converted sequences
                out += ";***************\n;* GROOP TRACK *\n;***************\n\n";
            }else{
                out += "; Sequence Header\n\n";
            }
        }else if(sectiongroup != 1 && stype == 1){
            sectiongroup = 1;
            int dyntableindex = findDynTableIndex(sec);
            if(dyntableindex < 0){
                if(dialect >= 2){
                    out += ";***************\n;* SUB TRACK   *\n;***************\n\n";
                }else{
                    out += (dialect & 1) ? "; Some Channel\n" : "; Channel Headers\n\n";
                }
            }else{
                out += (dialect >= 2) ? "\n;*** name of sfx  ***\n;" : "\n; Entry ";
                out += hex(dyntableindex, 8);
                out += (dialect >= 2) ? "\n" : ": some sfx\n";
            }
        }else if(sectiongroup != 2 && stype == 2){
            sectiongroup = 2;
            if(!(dialect & 1)){
                if(dialect >= 2){
                    out += ";***************\n;* NOTE TRACK  *\n;***************\n\n";
                }else{
                    out += "; Note Layers\n\n";
                }
            }
        }else if(sectiongroup == 2 && section.hasProperty(idSrcCmdRef) && !(dialect & 1)){
            sectiongroup = 3;
            if(dialect >= 2){
                out += ";*************\n;*  PATTERN  *\n;*************\n\n\n";
            }else{
                out += "; Calls\n\n";
            }
        }else if(stype == 3 && (dialect & 1)){
            sectiongroup = 4;
        }
        if(!(dialect & 1) && sec != 0 && !section.hasProperty(idSrcCmdRef) 
                && (int)section.getProperty(idTSection) != tsecnum){
            if(dialect >= 2){
                out += ";*** block:" + tsecnames[(int)section.getProperty(idTSection)] + " ***\n\n";
            }else{
                out += "; tsec" + section.getProperty(idTSection).toString() + "\n\n";
            }
            tsecnum = section.getProperty(idTSection);
        }
        if(stype == 3){
            //dyntable
            if(dialect >= 2){
                out += ";********************\n;   some table\n;********************\n";
            }else{
                out += "; Some Dyntable\n";
            }
        }
        //Section label
        if(sec != 0 || dialect < 2){
            out += section.getProperty(idLabelName).toString() + "\n";
        }
        if(stype == 3){
            //dyntable
            int lblctr = 0;
            for(int cmd=0; cmd<section.getNumChildren(); ++cmd){
                ValueTree command = section.getChild(cmd);
                if(command.hasProperty(idLabelName) && cmd != 0){
                    out += "\n\n" + command.getProperty(idLabelName).toString() + "\n";
                    lblctr = 0;
                }
                out += !(lblctr & 7) ? (dialect >= 2 ? "#label   " : "#address ") : ", ";
                int s = command.getProperty(idTargetSection, -1);
                if(s < 0 || s >= structure.getNumChildren()){
                    dbgmsg("Invalid idTargetSection " + String(s) + " in dyntable!");
                    return 2;
                }
                ValueTree targetsection = structure.getChild(s);
                String label;
                if(command.hasProperty(idTargetHash)){
                    ValueTree targetcommand = targetsection.getChildWithProperty(idHash,
                        command.getProperty(idTargetHash));
                    if(!targetcommand.isValid()){
                        dbgmsg("Invalid target command hash in dyntable!");
                        return 2;
                    }
                    label = targetcommand.getProperty(idLabelName, "ERROR").toString();
                }else{
                    label = targetsection.getProperty(idLabelName).toString();
                }
                out += label;
                ++lblctr;
                if(!(lblctr & 7)) out += "\n";
                if(lblctr == 16){
                    lblctr = 0;
                    out += "\n"; //Extra newline every 16
                }
            }
            if(lblctr != 0) out += "\n";
        }else if(stype == 4){
            //envelope
            for(int cmd=0; cmd<section.getNumChildren(); ++cmd){
                ValueTree command = section.getChild(cmd);
                if(command.hasProperty(idLabelName) && cmd != 0){
                    out += "\n" + command.getProperty(idLabelName).toString() + "\n";
                }
                ValueTree p1 = command.getChildWithProperty(idMeaning, "Rate");
                ValueTree p2 = command.getChildWithProperty(idMeaning, "Level");
                if(!p1.isValid() || !p2.isValid()){
                    dbgmsg("Invalid envelope point!\n");
                    return 2;
                }
                out += (dialect >= 2 ? "#word\t" : "#u16 ") 
                    + p1.getProperty(idValue, -1).toString() + "," 
                    + p2.getProperty(idValue, 0).toString() + "\n";
            }
        }else if(stype == 5){
            //message
            out += (dialect >= 2 ? "#msg \"" : "#string \"") 
                + section.getProperty(idMessage, "").toString() + "\"\n";
        }else if(stype == 6){
            //extable
            int lblctr = 0;
            for(int cmd=0; cmd<section.getNumChildren(); ++cmd){
                ValueTree command = section.getChild(cmd);
                if(command.hasProperty(idLabelName) && cmd != 0){
                    out += "\n\n" + command.getProperty(idLabelName).toString() + "\n";
                    lblctr = 0;
                }
                out += !(lblctr & 15) ? (dialect >= 2 ? "#byte    $" : "#u8 $") : ",$";
                ValueTree param = command.getChildWithProperty(idMeaning, "Data");
                if(!param.isValid()){
                    dbgmsg("Invalid other table / extable!");
                    return 2;
                }
                if(param.getProperty(idDataSrc).toString() != "fixed" ||
                        (int)param.getProperty(idDataLen) != 1){
                    dbgmsg("Invalid data type in other table / extable!");
                    return 2;
                }
                out += hex((int)param.getProperty(idValue, 0x69), 8);
                ++lblctr;
                if(lblctr == 16){
                    lblctr = 0;
                    out += "\n";
                }
            }
            if(lblctr != 0) out += "\n";
        }else{
            //Seq header, channel, or layer command
            int secticks = countTicks(section, 0, nullptr);
            for(int cmd=0; cmd<section.getNumChildren(); ++cmd){
                out += getCommandMusLine(sec, section, section.getChild(cmd), 
                    dialect, stype, secticks);
            }
        }
        out += "\n";
    }
    if(tsecnames_generated){
        tsecnames.clear();
        tsecnames_generated = false;
    }
    //Write file
    fos.writeText(out, false, false, nullptr);
    fos.flush();
    dbgmsg("Saved sequence to " + musfile.getFullPathName());
    return importresult;
}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////// importCom functions /////////////////////////////
////////////////////////////////////////////////////////////////////////////////

//Loads the node from the ABI describing the command.
ValueTree SeqFile::getDescription(uint8_t firstbyte, int stype){
    ValueTree test;
    for(int i=0; i<abi.getNumChildren(); i++){
        test = abi.getChild(i);
        if(!isCommandValidIn(test, stype)) continue;
        if(test.hasProperty(idCmdEnd)){
            if(firstbyte >= (int)test.getProperty(idCmd)
                    && firstbyte <= (int)test.getProperty(idCmdEnd)){
                return test;
            }
        }else{
            if(firstbyte == (int)test.getProperty(idCmd)){
                return test;
            }
        }
    }
    test = ValueTree();
    return test;
}

ValueTree SeqFile::getCommand(const Array<uint8_t> &data, uint32_t address, int stype){
    ValueTree ret("command");
    ValueTree param, desc;
    String action, meaning, datasrc;
    int i, len, paramlen, paramindex, cmdoffset, paramvalue, datalen;
    uint8_t c;
    uint32_t a = address;
    //
    len = 1;
    c = data[address];
    a++;
    desc = getDescription(c, stype);
    if(!desc.isValid()){
        //Command not found
        ret.setProperty(idCmd, (int)c, nullptr);
        ret.setProperty(idAddress, (int)address, nullptr);
        ret.setProperty(idLength, len, nullptr);
        ret.setProperty(idHash, 0, nullptr);
        return ret;
    }
    ret = desc.createCopy();
    cmdoffset = c - (int)ret.getProperty(idCmd, 0);
    action = desc.getProperty(idAction, "No Action");
    //dbgmsg(hex((uint32_t)address, 6) + ": " + hex(c) + " " + action);
    for(paramindex=0; paramindex<ret.getNumChildren(); paramindex++){
        param = ret.getChild(paramindex);
        meaning = param.getProperty(idMeaning, "None");
        //Get the value of this parameter
        paramvalue = 0;
        paramlen = 0;
        datasrc = param.getProperty(idDataSrc, "fixed");
        datalen = param.getProperty(idDataLen, 0);
        if(datasrc == "offset"){
            paramvalue = cmdoffset;
            param.setProperty(idDataAddr, 0, nullptr);
            //param.setProperty(idDataActualLen, 1, nullptr);
        }else if(datasrc == "constant"){
            paramvalue = datalen;
            param.setProperty(idDataAddr, -100000, nullptr);
            //param.setProperty(idDataActualLen, 0, nullptr);
        }else if(datasrc == "fixed"){
            for(i=0; i<datalen; i++){
                len++;
                paramlen++;
                paramvalue <<= 8;
                paramvalue += (uint8_t)data[a+i];
            }
            param.setProperty(idDataAddr, (int)(a-address), nullptr);
            //param.setProperty(idDataActualLen, paramlen, nullptr);
        }else if(datasrc == "variable"){
            len++;
            paramlen++;
            paramvalue = (uint8_t)data[a];
            if(paramvalue & 0x80){
                paramvalue &= 0x7F;
                paramvalue <<= 8;
                paramvalue += (uint8_t)data[a+1];
                len++;
                paramlen++;
                if(paramvalue < 0x80){
                    //Was encoded as a 2-byte variable, but didn't have to be
                    param.setProperty(idDataForce2, true, nullptr);
                }
            }
            param.setProperty(idDataAddr, (int)(a-address), nullptr);
            //param.setProperty(idDataActualLen, paramlen, nullptr);
        }else{
            dbgmsg("Invalid command description! datasrc == " + datasrc + ", action == " + action);
        }
        //Store info about parameter
        param.setProperty(idValue, paramvalue, nullptr);
        a += paramlen;
    }
    //Store info about command
    //ret.setProperty(idCmd, (int)c, nullptr); //idCmd is the base command, not the offset one
    if(ret.hasProperty(idCmdEnd)){
        ret.removeProperty(idCmdEnd, nullptr);
    }
    ret.setProperty(idAddress, (int)address, nullptr);
    ret.setProperty(idLength, len, nullptr);
    ret.setProperty(idHash, Random::getSystemRandom().nextInt(), nullptr);
    return ret;
}

ValueTree SeqFile::initCommand(uint32_t address){
    ValueTree command("command");
    command.setProperty(idCmd, -1, nullptr);
    command.setProperty(idAddress, (int)address, nullptr);
    command.setProperty(idHash, Random::getSystemRandom().nextInt(), nullptr);
    return command;
}

ValueTree SeqFile::makeDynTableCommand(uint32_t address, var target, int dtstype, 
        int dtdynstype){
    ValueTree command = initCommand(address);
    command.setProperty(idLength, 2, nullptr);
    ValueTree addrparam("parameter");
    addrparam.setProperty(idMeaning, "Absolute Address", nullptr);
    addrparam.setProperty(idValue, target, nullptr);
    addrparam.setProperty(idDataSrc, "fixed", nullptr);
    addrparam.setProperty(idDataLen, 2, nullptr);
    command.appendChild(addrparam, nullptr);
    if(dtstype == 0){
        command.setProperty(idAction, "Ptr Seq Header", nullptr);
        command.setProperty(idName, "[dyntable Ptr Seq Header]", nullptr);
    }else if(dtstype == 1){
        command.setProperty(idAction, "Ptr Channel Header", nullptr);
        command.setProperty(idName, "[dyntable Ptr Channel Header]", nullptr);
        ValueTree param("parameter");
        param.setProperty(idMeaning, "Channel", nullptr);
        param.setProperty(idValue, 0, nullptr);
        param.setProperty(idDataSrc, "fixed", nullptr);
        param.setProperty(idDataLen, 0, nullptr);
        command.appendChild(param, nullptr);
    }else if(dtstype == 2){
        command.setProperty(idAction, "Ptr Note Layer", nullptr);
        command.setProperty(idName, "[dyntable Ptr Note Layer]", nullptr);
        ValueTree param("parameter");
        param.setProperty(idMeaning, "Layer", nullptr);
        param.setProperty(idValue, 0, nullptr);
        param.setProperty(idDataSrc, "fixed", nullptr);
        param.setProperty(idDataLen, 0, nullptr);
        command.appendChild(param, nullptr);
    }else if(dtstype == 3){
        command.setProperty(idAction, "Set Dyntable", nullptr);
        command.setProperty(idName, "[dyntable Ptr Dyn Table]", nullptr);
        command.setProperty(idDynTableSType, dtdynstype, nullptr);
    }else if(dtstype == 6){
        command.setProperty(idAction, "Ptr Other Table", nullptr);
        command.setProperty(idName, "[dyntable Ptr Other Table]", nullptr);
    }else{
        dbgmsg("Invalid dyntable stype target " + String(dtstype) + "!");
        return ValueTree();
    }
    return command;
}

ValueTree SeqFile::getDynTableCommand(const Array<uint8_t> &data, uint32_t address, ValueTree section){
    if(address+1 >= data.size()){
        dbgmsg("Dynamic table address ran off end of sequence!");
        return ValueTree();
    }
    uint16_t tgt_addr = ((uint16_t)data[address] << 8) | data[address+1];
    if(tgt_addr >= data.size()){
        dbgmsg("Stopping dyntable @" + hex(address,16) + " because pointer outside seq " + hex(tgt_addr));
        return ValueTree("end");
    }
    return makeDynTableCommand(address, (int)tgt_addr, 
        section.getProperty(idDynTableSType), section.getProperty(idDynTableDynSType));
}

ValueTree SeqFile::makeEnvelopeCommand(uint32_t address, int16_t rate, uint16_t level){
    ValueTree command = initCommand(address);
    command.setProperty(idLength, 4, nullptr);
    command.setProperty(idAction, "Envelope Point", nullptr);
    command.setProperty(idName, "[envelope point]", nullptr);
    ValueTree param("parameter");
    param.setProperty(idMeaning, "Rate", nullptr);
    param.setProperty(idValue, (int)rate, nullptr);
    param.setProperty(idDataSrc, "fixed", nullptr);
    param.setProperty(idDataLen, 2, nullptr);
    command.appendChild(param, nullptr);
    param = ValueTree("parameter");
    param.setProperty(idMeaning, "Level", nullptr);
    param.setProperty(idValue, (int)level, nullptr);
    param.setProperty(idDataSrc, "fixed", nullptr);
    param.setProperty(idDataLen, 2, nullptr);
    command.appendChild(param, nullptr);
    return command;
}

ValueTree SeqFile::getEnvelopeCommand(const Array<uint8_t> &data, uint32_t address){
    if(address+3 >= data.size()){
        dbgmsg("Envelope ran off end of sequence!");
        return ValueTree();
    }
    int16_t rate = ((int16_t)data[address] << 8) | data[address+1];
    uint16_t level = ((uint16_t)data[address+2] << 8) | data[address+3];
    ValueTree command = makeEnvelopeCommand(address, rate, level);
    if(rate < 0){
        if(rate != -1) dbgmsg("Nonstandard envelope termination: rate " + String(rate));
        command.setProperty(idSecDone, true, nullptr);
    }
    return command;
}

ValueTree SeqFile::makeBasicDataCommand(uint32_t address, int value, 
        String datasrc, int datalen){
    ValueTree command = initCommand(address);
    command.setProperty(idLength, datalen, nullptr);
    command.setProperty(idAction, "Data", nullptr);
    command.setProperty(idName, "[data]", nullptr);
    ValueTree param("parameter");
    param.setProperty(idMeaning, "Data", nullptr);
    param.setProperty(idValue, value, nullptr);
    param.setProperty(idDataSrc, datasrc, nullptr);
    param.setProperty(idDataLen, datalen, nullptr);
    command.appendChild(param, nullptr);
    return command;
}

ValueTree SeqFile::getMessageCommand(const Array<uint8_t> &data, uint32_t address, ValueTree section){
    uint8_t c = data[address];
    ValueTree command = makeBasicDataCommand(address, c, "fixed", 1);
    if(c == 0){
        if(!section.hasProperty(idMessage)){
            dbgmsg("Warning, empty message at " + hex(address,16) + "!");
            section.setProperty(idMessage, "", nullptr);
        }
        command.setProperty(idSecDone, true, nullptr);
    }else{
        section.setProperty(idMessage, section.getProperty(idMessage, "").toString() 
            + String::charToString(c), nullptr);
    }
    return command;
}

ValueTree SeqFile::getOtherTableCommand(const Array<uint8_t> &data, uint32_t address){
    return makeBasicDataCommand(address, data[address], "fixed", 1);
}

int SeqFile::getPtrAddress(ValueTree command, uint32_t currentAddr, int seqlen){
    int address;
    ValueTree param = command.getChildWithProperty(idMeaning, "Absolute Address");
    if(param.isValid()){
        address = param.getProperty(idValue);
    }else{
        param = command.getChildWithProperty(idMeaning, "Relative Address");
        if(param.isValid()){
            int value = param.getProperty(idValue);
            if(value >= 0x80) value -= 0x100;
            address = value + (int)currentAddr;
        }else{
            dbgmsg("@" + hex(currentAddr,16) + ": Pointer with no address value!");
            return -1;
        }
    }
    if(address >= seqlen){
        dbgmsg("@" + hex(currentAddr,16) + ": Pointer off end of sequence to " 
                + hex((uint32_t)address,16) + "!");
        return -1;
    }
    return address;
}

bool SeqFile::removeSection(int remove, int &replace, int hash, int cmdbyte){
    structure.removeChild(remove, nullptr);
    if(replace > remove) --replace; //By removing remove we've shifted down index of replace too
    for(int j=0; j<structure.getNumChildren(); ++j){
        ValueTree tmpsec2 = structure.getChild(j);
        for(int k=0; k<tmpsec2.getNumChildren(); ++k){
            ValueTree cmd = tmpsec2.getChild(k);
            int target = cmd.getProperty(idTargetSection, -1);
            if(target == remove){
                cmd.setProperty(idTargetSection, replace, nullptr);
                if(!cmd.hasProperty(idTargetHash)){
                    //Pointer to beginning of whole section--need to now point to target cmd
                    cmd.setProperty(idTargetHash, hash, nullptr);
                }
                if(cmdbyte >= 0){
                    cmd.setProperty(idTargetCmdByte, cmdbyte, nullptr);
                }
            }else if(target > remove){
                cmd.setProperty(idTargetSection, target-1, nullptr);
            }
        }
        /*
        int dts = tmpsec2.getProperty(idCurDynTableSec, -1);
        if(dts == remove){
            dbgmsg("Removing section " + String(remove) + " which is curdyntablesec for section " 
                + String(j) + ", internal error or ridiculous sequence!");
            return false;
        }else if(dts > remove){
            tmpsec2.setProperty(idCurDynTableSec, dts-1, nullptr);
        }
        */
    }
    /*
    if(curdyntablesec == remove){
        dbgmsg("Removing section " + String(remove) + " which is curdyntablesec,"
            " internal error or ridiculous sequence!");
        return false;
    }else if(curdyntablesec > remove){
        --curdyntablesec;
    }
    */
    return true;
}

int SeqFile::checkRanIntoOtherSection(int parse_stype, int &parse_s, uint32_t &parse_addr, 
        ValueTree parse_cmd){
    int ret = 0;
    for(int i=0; i<structure.getNumChildren(); ++i){
        if(i == parse_s) continue;
        ValueTree tmpsec = structure.getChild(i);
        int sec_addr = (int)tmpsec.getProperty(idAddress);
        int sec_stype = (int)tmpsec.getProperty(idSType);
        if(parse_addr + (int)parse_cmd.getProperty(idLength, 1) <= sec_addr) continue;
        if(tmpsec.hasProperty(idAddressEnd)){
            //Already parsed section
            if(parse_addr >= (int)tmpsec.getProperty(idAddressEnd)) continue;
            if(parse_stype == 3){
                dbgmsg("@" + hex(parse_addr,16) + ": Stopping dyntable because ran into another section");
                if(parse_addr != sec_addr) dbgmsg("(only partially, warning!!!)");
            }else if(parse_stype == sec_stype && parse_addr == sec_addr){
                dbgmsg("@" + hex(parse_addr,16) + ": section " + String(parse_s) 
                    + " naturally ran into start of section " + String(i) + ", merging");
                int firstCmdHash = tmpsec.getChild(0).getProperty(idHash);
                for(int k=0; k<tmpsec.getNumChildren(); ++k){
                    structure.getChild(parse_s).appendChild(tmpsec.getChild(k).createCopy(), nullptr);
                }
                parse_addr = (int)tmpsec.getProperty(idAddressEnd);
                if(!removeSection(i, parse_s, firstCmdHash, -1)) return -1;
                ret |= 2; //restart_parsing
            }else{
                dbgmsg("@" + hex(parse_addr,16) + ": Reading section " + String(parse_s) 
                    + " stype " + String(parse_stype) + " ran into existing section " 
                    + String(i) + " stype " + String(sec_stype) + "!");
                return -1;
            }
            ret |= 1; //section escape
            return ret;
        }
        //Not yet parsed section--target placeholder for some command
        if(parse_addr > sec_addr) continue;
        //Some part of the command is what the target address is referring to
        if((parse_addr == sec_addr && parse_stype == sec_stype) || sec_stype < 0){
            if(sec_stype < 0){
                //Section is target of self-modifying code or introspection
                dbgmsg("@" + hex(parse_addr,16) + ": Found target command for Ptr Self");
            }else{
                //Target address is beginning of command, and same stype
                dbgmsg("@" + hex(parse_addr,16) + ": Ran into branch destination (normal)");
            }
            if(!removeSection(i, parse_s, parse_cmd.getProperty(idHash), 
                sec_stype < 0 ? (sec_addr - parse_addr) : -1)) return -1;
            --i;
            ret |= 2; //restart_parsing
        }else if(parse_stype == 3){
            dbgmsg("@" + hex(parse_addr,16) + ": Stopping dyntable because ran into not-yet-parsed section");
            if(parse_addr != sec_addr) dbgmsg("(only partially, warning!!!)");
            ret |= 1; //section escape
            return ret;
        }else{
            dbgmsg("@" + hex(parse_addr,16) + " stype " + String(parse_stype) 
                + " cmd " + parse_cmd.getProperty(idAction, "No Action").toString()
                + " len " + parse_cmd.getProperty(idLength, 1).toString() 
                + " ran into not-yet-parsed section @" + hex(sec_addr,16) 
                + " stype " + String(sec_stype) + "!");
            return -1;
        }
    }
    return ret;
}

int SeqFile::findTargetCommand(String action, uint32_t parse_addr, int tgt_addr, int tgt_stype, ValueTree parse_cmd){
    for(int i=0; i<structure.getNumChildren(); ++i){
        ValueTree tmpsec = structure.getChild(i);
        int tmpaddr = tmpsec.getProperty(idAddress);
        if(tgt_addr < tmpaddr) continue;
        if(tgt_addr == tmpaddr && tmpsec.getNumChildren() == 0){
            //Pointer to existing empty section
            int sec_stype = tmpsec.getProperty(idSType);
            if(sec_stype != tgt_stype && sec_stype >= 0 && tgt_stype >= 0){
                dbgmsg(action + " to addr " + hex(tgt_addr,16) + " empty section "
                    + String(i) + ": requested wrong stype " + String(tgt_stype)
                    + " (sec is " + tmpsec.getProperty(idSType).toString() + ")!");
                return -1;
            }
            if(tgt_stype == 3){
                if( tmpsec.hasProperty(idDynTableSType) && parse_cmd.hasProperty(idDynTableSType) &&
                    tmpsec.getProperty(idDynTableSType) != parse_cmd.getProperty(idDynTableSType)){
                    dbgmsg("dyntable @" + hex(parse_addr-2,16) + " pointer to " + hex(tgt_addr,16)
                        + " to wrong dynamic stype " + tmpsec.getProperty(idDynTableSType).toString()
                        + " vs. current double-dynamic stype " + parse_cmd.getProperty(idDynTableSType).toString() + "!");
                    return -1;
                }
            }
            if(sec_stype < 0 && tgt_stype >= 0){
                tmpsec.setProperty(idSType, tgt_stype, nullptr);
            }
            parse_cmd.setProperty(idTargetSection, i, nullptr);
            return 1;
        }
        if(tmpsec.hasProperty(idAddressEnd) && tgt_addr >= (int)tmpsec.getProperty(idAddressEnd)) continue;
        //Pointer to existing command in the section
        for(int j=0; j<tmpsec.getNumChildren(); ++j){
            ValueTree cmd = tmpsec.getChild(j);
            uint32_t a = (int)cmd.getProperty(idAddress);
            uint32_t l = (int)cmd.getProperty(idLength);
            if(tgt_addr >= a+l) continue;
            if(tgt_addr > a && tgt_stype >= 0){
                dbgmsg(action + " to addr " + hex(tgt_addr,16) + " in middle of command "
                    + String(j) + " (" + cmd.getProperty(idName).toString() + ") in section "
                    + String(i) + "!");
                return -1;
            }
            jassert(tgt_addr >= a); //commands must be in addr order in section
            if((int)tmpsec.getProperty(idSType) != tgt_stype && action != "Ptr Self"){
                dbgmsg(action + " to addr " + hex(tgt_addr,16) + " command "
                    + String(j) + " (" + cmd.getProperty(idName).toString() + ") in section "
                    + String(i) + ": requested wrong stype " + String(tgt_stype)
                    + "(sec is " + tmpsec.getProperty(idSType).toString() + ")!");
                return -1;
            }
            if(tgt_stype == 3 && 
                    tmpsec.hasProperty(idDynTableSType) && parse_cmd.hasProperty(idDynTableSType) &&
                    tmpsec.getProperty(idDynTableSType) != parse_cmd.getProperty(idDynTableSType)){
                dbgmsg("dyntable @" + hex(parse_addr-2,16) + " pointer to " + hex(tgt_addr,16)
                    + " to wrong dynamic stype " + tmpsec.getProperty(idDynTableSType).toString()
                    + " vs. current double-dynamic stype " + parse_cmd.getProperty(idDynTableSType).toString() + "!");
                return -1;
            }
            dbgmsg("Found target command: " + cmd.getProperty(idName).toString()
                + " in section " + String(i) + " @" + hex(tgt_addr,16));
            parse_cmd.setProperty(idTargetSection, i, nullptr);
            parse_cmd.setProperty(idTargetHash, cmd.getProperty(idHash), nullptr);
            if(action == "Ptr Self"){
                parse_cmd.setProperty(idTargetCmdByte, (int)(tgt_addr - a), nullptr);
            }
            return 1;
        }
    }
    return 0;
}

int SeqFile::createSection(String src_action, int tgt_addr, int tgt_stype, ValueTree parse_cmd,
        ValueTree parse_section, bool forceContinue){
    ValueTree newsec = createBlankSectionVT(tgt_stype);
    newsec.setProperty(idAddress, tgt_addr, nullptr);
    if(forceContinue || (bool)parse_section.getProperty(idQuestionableSection, false)){
        newsec.setProperty(idQuestionableSection, true, nullptr);
    }
    if(src_action == "Call"){
        newsec.setProperty(idSrcCmdRef, parse_section.getNumChildren()-1, nullptr);
    }
    //Special handling for particular types
    if(tgt_stype == 1){
        int channel = -1;
        if(src_action == "Ptr Channel Header"){
            ValueTree param = parse_cmd.getChildWithProperty(idMeaning, "Channel");
            if(param.isValid()) channel = param.getProperty(idValue, -1);
        }else{
            channel = parse_section.getProperty(idChannel, -1);
        }
        if(channel < 0 || channel >= 16){
            dbgmsg("Error determining channel for new section from " + src_action 
                + " @" + hex((int)parse_cmd.getProperty(idAddress),16) + "!");
            return -1;
        }
        newsec.setProperty(idChannel, channel, nullptr);
    }else if(tgt_stype == 2){
        int channel = parse_section.getProperty(idChannel, -1);
        jassert(channel >= 0 && channel < 16);
        int layer = -1;
        if(src_action == "Ptr Note Layer"){
            ValueTree param = parse_cmd.getChildWithProperty(idMeaning, "Note Layer");
            if(param.isValid()) layer = param.getProperty(idValue, -1);
        }else{
            layer = parse_section.getProperty(idLayer, -1);
        }
        if(layer < 0 || layer >= max_layers){
            dbgmsg("Error determining note layer for new section from " + src_action 
                + " @" + hex((int)parse_cmd.getProperty(idAddress),16) + "!");
            return -1;
        }
        newsec.setProperty(idChannel, channel, nullptr);
        newsec.setProperty(idLayer, layer, nullptr);
    }else if(tgt_stype == 3){
        dbgmsg("New dyntable @" + hex(tgt_addr,16));
        newsec.setProperty(idChannel, 0, nullptr); //Note layer parsing dyntable will check for this
        if(parse_cmd.hasProperty(idDynTableSType)){
            //Only if a dynamic table pointing to another dynamic table
            dbgmsg("with known dyntablestype " + parse_cmd.getProperty(idDynTableSType).toString());
            newsec.setProperty(idDynTableSType, parse_cmd.getProperty(idDynTableSType), nullptr);
        }
    }else if(tgt_stype == 6 || tgt_stype < 0){
        //For some tables, the size is specified in the command (usually as constant)
        ValueTree param = parse_cmd.getChildWithProperty(idMeaning, "Size");
        if(param.isValid()){
            newsec.setProperty(idLength, param.getProperty(idValue), nullptr);
        }
    }
    structure.appendChild(newsec, nullptr);
    parse_cmd.setProperty(idTargetSection, structure.getNumChildren()-1, nullptr);
    return 0;
}

int SeqFile::actionTargetSType(String action, int stype, uint32_t a){
    if(action == "Jump" || action == "Branch" || action == "Call"){
        return stype;
    }else if(action == "Ptr Seq Header"){
        if(stype != 0 && stype != 3){
            dbgmsg("@" + hex(a,16)+ ": " + action + " from invalid parent stype " + String(stype) + "!");
            return -2;
        }
        return 0;
    }else if(action == "Ptr Channel Header"){
        if(stype != 0 && stype != 1 && stype != 3){
            dbgmsg("@" + hex(a,16)+ ": " + action + " from invalid parent stype " + String(stype) + "!");
            return -2;
        }
        return 1;
    }else if(action == "Ptr Note Layer"){
        if(stype != 1 && stype != 3){
            dbgmsg("@" + hex(a,16)+ ": " + action + " from invalid parent stype " + String(stype) + "!");
            return -2;
        }
        return 2;
    }else if(action == "Set Dyntable" || action == "Seq Hdr Call Table"){ return 3;
    }else if(action == "Ptr Envelope"){    return 4;
    }else if(action == "Ptr Message"){     return 5;
    }else if(action == "Ptr Other Table"){ return 6;
    }else if(action == "Ptr Self"){        return -1;
    }else if(action == "Maybe Ptr"){       return 6;
    }else{
        dbgmsg("Unknown action " + action + " for actionTargetSType!");
        return -2;
    }
}

void SeqFile::clearRecurVisited(){
    for(int s=0; s<structure.getNumChildren(); ++s){
        ValueTree tmpsec = structure.getChild(s);
        for(int c=0; c<tmpsec.getNumChildren(); ++c){
            ValueTree command = tmpsec.getChild(c);
            if(command.hasProperty(idRecurVisited)) command.removeProperty(idRecurVisited, nullptr);
        }
    }
}

bool SeqFile::findDynTableType(int dtsec, const StringArray &refs){
    //Traverse the sequence, following structural commands, to find what is
    //the type this dyntable is used as after each place it's defined.
    ValueTree section = structure.getChild(dtsec);
    if(refs.size() == 0){
        dbgmsg("Internal error, no references to dyntable!");
        return false;
    }
    int dtstype = -1;
    for(int r=0; r<refs.size(); ++r){
        int hash = refs[r].getIntValue();
        //Find this command
        for(int s=0; s<structure.getNumChildren(); ++s){
            if(s == dtsec) continue;
            ValueTree tmpsec = structure.getChild(s);
            for(int c=0; c<tmpsec.getNumChildren(); ++c){
                ValueTree command = tmpsec.getChild(c);
                if((int)command.getProperty(idHash) != hash) continue;
                int res = findNextDynTableType(s, c);
                if(res == -1){
                    dbgmsg("No dyntable use after definition in sec " + String(s)
                        + " cmd " + String(c) + "!");
                    importresult |= 1;
                }else if(res < 0){ //other error
                    clearRecurVisited();
                    return false;
                }else if(dtstype < 0){
                    dtstype = res;
                    dbgmsg("dyntable sec " + String(dtsec) + " found stype " + String(dtstype));
                }else if(dtstype == res){
                    dbgmsg("and another use also stype " + String(dtstype));
                }else{
                    dbgmsg("dyntable sec " + String(dtsec) + ": previously found stype " 
                        + String(dtstype) + ", just found another stype " + String(res)
                        + " after ref at sec " + String(s) + " cmd " + String(c) + ", aborting!");
                    clearRecurVisited();
                    return false;
                }
            }
        }
        clearRecurVisited();
    }
    if(dtstype < 0){
        dbgmsg("dyntable sec " + String(dtsec) + ": could not find any uses of this table, so unknown stype! Can't continue!");
        return false;
    }
    section.setProperty(idDynTableSType, dtstype, nullptr);
    return true;
}

int SeqFile::findNextDynTableType(int s, int c){
    //dbgmsg("Looking for next dyntable use after sec " + String(s) + " cmd " + String(c));
    ValueTree section = structure.getChild(s);
    while(true){
        if(c >= section.getNumChildren()) return -1;
        ValueTree command = section.getChild(c);
        if(command.hasProperty(idRecurVisited)) return -1;
        command.setProperty(idRecurVisited, true, nullptr);
        String action = command.getProperty(idAction);
        if(action == "End of Data"){
            return -1;
        }else if(action == "Seq Hdr Call Table"){
            //Technically this isn't a dyntable as it doesn't set the dyntable
            //pointer, but seq hdr doesn't have its own dyntable pointer anyway,
            //so we can treat this as a command which both sets and then
            //immediately uses the dyntable
            return 0;
        }else if(action == "Channel from Dyntable"){
            return 1;
        }else if(action == "Layer from Dyntable"){
            return 2;
        }else if(action == "Dyntable from Dyntable"){
            return 3;
        }else if(action == "Data from Dyntable"){
            return 6;
        }else if(action == "Set Dyntable" || action == "Dyntable from Data"){
            //Dyntable pointer is now overwritten with something else. However,
            //most likely this is just multiple commands setting up the
            //dyntable, before one command actually uses it.
            // dbgmsg("Sec " + String(s) + " cmd " + String(c) 
            //     + ": dyntable pointer overwritten by another command, could now "
            //     "go anywhere, but assuming it will be the same type");
            //Also since we're now starting with the set dyntable command itself
            //for Seq Hdr Call Table purposes, this will be triggered every time.
            ++c;
        }else if(action == "Jump"){
            if(!getSectionAndCmd(command, s, c)) return -2;
            section = structure.getChild(s);
        }else if(action == "Call"){
            int s2, c2, dtstype;
            if(!getSectionAndCmd(command, s2, c2)) return -2;
            dtstype = findNextDynTableType(s2, c2);
            if(dtstype != -1) return dtstype; //either error -2 or found >= 0
            ++c; //Was not found in call, move on to next command
        }else if(action == "Branch"){
            //Try both paths, compare results
            int s2, c2, dtstype2, dtstype;
            if(!getSectionAndCmd(command, s2, c2)) return -2;
            dtstype2 = findNextDynTableType(s2, c2);
            if(dtstype2 <= -2) return -2;
            dtstype = findNextDynTableType(s, c+1);
            if(dtstype <= -2) return -2;
            if(dtstype < 0) return dtstype2; //whether -1 or found
            if(dtstype2 < 0) return dtstype; //whether -1 or found
            if(dtstype == dtstype2) return dtstype; //same
            dbgmsg("findNextDynTableType branch paths different stype results from sec "
                + String(s) + " cmd " + String(c) + ": taking branch gives " + String(dtstype2)
                + " while not taking branch gives " + String(dtstype) + "!");
            return -2;
        }else{
            ++c;
        }
    }
    return -1; //This is unreachable code
}

bool SeqFile::getSectionAndCmd(ValueTree command, int &s, int &c){
    if(!command.hasProperty(idTargetSection)){
        dbgmsg("Internal error in getSectionAndCmd!");
        return false;
    }
    if(command.getProperty(idTargetSection).isString()){
        String tgt = command.getProperty(idTargetSection);
        if(altnames.containsKey(tgt)) tgt = altnames[tgt];
        for(s=0; s<structure.getNumChildren(); ++s){
            ValueTree sec = structure.getChild(s);
            c = 0;
            if(sec.getProperty(idLabelName).toString() == tgt) return true;
            for(; c<sec.getNumChildren(); ++c){
                if(sec.getChild(c).getProperty(idLabelName).toString() == tgt) return true;
            }
        }
        dbgmsg("Could not find section " + tgt + "!");
        return false;
    }
    int ts = command.getProperty(idTargetSection, -1);
    if(ts < 0 || ts >= structure.getNumChildren()){
        dbgmsg("Sec " + String(s) + " cmd " + String(c) + " jump to invalid section "
            + String(ts) + "!");
        return false;
    }
    s = ts;
    c = 0;
    if(command.hasProperty(idTargetHash)){
        c = structure.getChild(s).indexOf(structure.getChild(s).getChildWithProperty(
                idHash, command.getProperty(idTargetHash)));
        if(c < 0){
            dbgmsg("Cmd with hash " + command.getProperty(idTargetHash).toString()
                + " not found in section " + String(s) + "!");
            return false;
        }
    }
    return true;
}

void SeqFile::convertPtrsFirstCmd(){
    for(int sec=0; sec<structure.getNumChildren(); ++sec){
        ValueTree section = structure.getChild(sec);
        for(int cmd=0; cmd<section.getNumChildren(); ++cmd){
            ValueTree command = section.getChild(cmd);
            if(!command.hasProperty(idTargetSection)) continue;
            if(!command.hasProperty(idTargetHash)) continue;
            int s, c;
            if(!getSectionAndCmd(command, s, c)) return;
            if(c == 0){
                //First command in section, point to section instead
                command.removeProperty(idTargetHash, nullptr);
            }
        }
    }
}

bool SeqFile::findTableEnd(int s, const Array<uint8_t> &data){
    ValueTree section = structure.getChild(s);
    int a = section.getProperty(idAddress);
    int a_end = data.size();
    if(section.hasProperty(idLength)){
        int len = section.getProperty(idLength);
        dbgmsg("Table section " + String(s) + " using table length specified in command: " + String(len));
        a_end = a + len;
        section.setProperty(idAddressEnd, a_end, nullptr);
        section.removeProperty(idLength, nullptr);
        return true;
    }
    //End is the start of the next section after it
    for(int j=0; j<structure.getNumChildren(); ++j){
        if(j==s) continue;
        ValueTree tmpsec = structure.getChild(j);
        int sec_addr = tmpsec.getProperty(idAddress);
        if(sec_addr < a) continue;
        if(sec_addr >= a_end) continue;
        if(sec_addr == a){
            dbgmsg("Another section starts at same place as data table, internal error!");
            return false;
        }
        a_end = sec_addr;
    }
    section.setProperty(idAddressEnd, a_end, nullptr);
    return true;
}

int SeqFile::parseComSection(int s, const Array<uint8_t> &data, Array<uint8_t> &datause,
        bool forceContinue){
    int ret = 0;
    ValueTree section = structure.getChild(s);
    if(!forceContinue && section.hasProperty(idAddressEnd)){
        dbgmsg("Internal error, section " + String(s) + " already parsed!");
        return 2;
    }
    if(forceContinue && !section.hasProperty(idAddressEnd)){
        dbgmsg("Internal error, forcing continue on section " + String(s) + ", but not parsed before!");
        return 2;
    }
    int stype = section.getProperty(idSType);
    dbgmsg("Parsing section " + String(s) + " stype " + String(stype));
    if(stype == 6){
        dbgmsg("Internal error, parseComSection use for table sections is deprecated!");
        return 2;
    }
    uint32_t a, forceContinueA;
    if(!forceContinue){
        a = (int)section.getProperty(idAddress);
        forceContinueA = -1;
    }else{
        a = (int)section.getProperty(idAddressEnd);
        forceContinueA = a;
        section.removeProperty(idAddressEnd, nullptr);
    }
    if(stype == 3){
        if(forceContinue){
            dbgmsg("Can't force continue a dyntable!");
            return 2;
        }
        if(!section.hasProperty(idDynTableSType)){
            StringArray refs = StringArray::fromTokens(
                section.getProperty(idSrcCmdRef).toString(), ",", "");
            if(!findDynTableType(s, refs)) return 2;
        }
        if((int)section.getProperty(idDynTableSType) == 3 && !section.hasProperty(idDynTableDynSType)){
            dbgmsg("dynsetdyntable section missing idDynTableDynSType, "
                "double-dynamic commands not yet fully supported! Aborting!");
            return 2;
        }
    }
    //Parse commands.
    bool secdone = false;
    while(!secdone){
        if(stype == 6 && a == ((int)section.getProperty(idAddress) 
                + (int)section.getProperty(idLength, 0))){
            //Normal end of other table
            break;
        }
        if(a >= data.size()){
            if(a == data.size() && stype == 3){
                dbgmsg("Stopping dyntable because end of sequence");
                break;
            }
            dbgmsg("Warning: @" + hex(a,16) + ": in section " + String(s) 
                + ", ran off end of sequence. Normally this is an error, but "
                "in some technical sequences this is normal.");
            importresult |= 1;
            break;
        }
        //Need to get command before checking if run into existing commands,
        //because have to use command hash if ran into branch dest
        ValueTree command;
        if(stype >= 0 && stype <= 2){
            //Normal command types: sequence header, channel header, note layer
            command = getCommand(data, a, stype);
        }else if(stype == 3){
            command = getDynTableCommand(data, a, section);
        }else if(stype == 4){
            command = getEnvelopeCommand(data, a);
        }else if(stype == 5){
            command = getMessageCommand(data, a, section);
        }else if(stype == 6){
            command = getOtherTableCommand(data, a);
        }else{
            dbgmsg("Internal stype error!");
            return 2;
        }
        if(!command.isValid()) return 2;
        if(command.getType().toString() == "end") break;
        if(command.hasProperty(idSecDone)){
            command.removeProperty(idSecDone, nullptr);
            secdone = true;
        }
        int cmdlen = (int)command.getProperty(idLength, 1);
        if(cmdlen < 0){
            dbgmsg("Internal error, negative command length!");
            return 2;
        }
        //Check if we ran into another section at this command
        int ranIntoResult = checkRanIntoOtherSection(stype, s, a, command);
        if(ranIntoResult < 0){
            if(forceContinue){
                if(a == forceContinueA){
                    dbgmsg("Ran into another section during first command, aborting force continue");
                    ret = -1;
                }else{
                    dbgmsg("Considering that the end of the unused data (not an error)");
                }
                break;
            }
            if((bool)section.getProperty(idQuestionableSection, false)){
                dbgmsg("Ran into another section while parsing child of unused section, ending section");
                break;
            }
            //Otherwise this is an error
            return 2;
        }
        if((ranIntoResult & 2)) ret = 1; //restart parsing
        if((ranIntoResult & 1)) break; //section escape
        //Store command
        section.appendChild(command, nullptr);
        for(int i=a; i<a+cmdlen; ++i){
            if(datause[i]){
                dbgmsg("Internal error, multiple command data use @" + hex(a,16) + "!");
                return 2;
            }
            datause.set(i, 1);
        }
        a += cmdlen;
        //Process structural commands
        String action = command.getProperty(idAction, "Unknown").toString();
        if(action == "End of Data"){
            secdone = true;
        }else if(action == "Jump" || action == "Branch" || action == "Call" 
                || action == "Ptr Seq Header" || action == "Ptr Channel Header"
                || action == "Ptr Note Layer" 
                || action == "Seq Hdr Call Table" || action == "Set Dyntable"
                || action == "Ptr Envelope" || action == "Ptr Message"
                || action == "Ptr Other Table" || action == "Ptr Self"
                || action == "Maybe Ptr"){
            //Set up pointer and stype
            int tgt_addr = getPtrAddress(command, a, data.size());
            if(action == "Maybe Ptr" && tgt_addr <= 0){
                dbgmsg("Considering Maybe Ptr to not be a pointer");
                continue; //Guess it's not a pointer
            }
            if(tgt_addr < 0) return 2; //Already printed error
            //dbgmsg(action + " @" + hex(a,16) + " to @" + hex(tgt_addr,16));
            int tgt_stype = actionTargetSType(action, stype, a);
            if(tgt_stype < -1) return 2;
            //Find target command if it exists
            int res = findTargetCommand(action, a, tgt_addr, tgt_stype, command);
            if(res < 0){
                if(action == "Maybe Ptr"){
                    dbgmsg("Considering Maybe Ptr to not be a pointer");
                    continue; //Guess it's not a pointer
                }
                if(forceContinue && a - cmdlen == forceContinueA){
                    dbgmsg("Aborting force continue due to error on first new command");
                    //Undo all of our changes and get out of here
                    section.removeChild(command, nullptr);
                    a -= cmdlen;
                    for(int i=a; i<a+cmdlen; ++i) datause.set(i, 0);
                    ret = -1;
                    break;
                }
                return 2;
            }
            if(res == 0){
                //Not found
                res = createSection(action, tgt_addr, tgt_stype, command, section, forceContinue);
                if(res < 0) return 2;
            }
            //Special post handling for certain pointers
            if(action == "Jump"){
                //Unconditional jump ends the section
                secdone = true;
            }else if(action == "Seq Hdr Call Table" || action == "Set Dyntable"){
                ValueTree tmpsec = structure.getChild(command.getProperty(idTargetSection));
                tmpsec.setProperty(idSrcCmdRef, tmpsec.getProperty(idSrcCmdRef, "").toString() 
                    + "," + command.getProperty(idHash).toString(), nullptr);
            }
        }
    }
    //End of section
    section.setProperty(idAddressEnd, (int)a, nullptr);
    return ret;
}

void SeqFile::parseTableSection(int s, const Array<uint8_t> &data, Array<uint8_t> &datause){
    ValueTree section = structure.getChild(s);
    for(int a = section.getProperty(idAddress); a<(int)section.getProperty(idAddressEnd); ++a){
        section.appendChild(makeBasicDataCommand(a, data[a], "fixed", 1), nullptr);
        datause.set(a, 1);
    }
}

bool SeqFile::findFirstUnusedData(const Array<uint8_t> &data, const Array<uint8_t> &datause, 
        int &start, int &end, bool &zeroes, bool &ismsg){
    for(int i=0; i<data.size(); ++i){
        if(datause[i]) continue;
        start = i;
        zeroes = true;
        ismsg = true;
        bool lastzero = false;
        while(i<data.size() && !datause[i]){
            if(data[i] != 0) zeroes = false;
            if((data[i] != 0 && data[i] < ' ') || data[i] > '~' || lastzero) ismsg = false;
            lastzero = (data[i] == 0);
            ++i;
        }
        if(!lastzero || i < start+3) ismsg = false;
        if(i == data.size() && zeroes && (    
                   (!(i & 0xF) && i - start <= 0xF)    //padded to 16 bytes
                || (!(i & 0x3) && i - start <= 0x3))){ //padded to 4 bytes
            dbgmsg("Ignoring a few unused zeros at end of file, probably padding");
            return false;
        }
        end = i;
        return true;
    }
    return false;
}

bool SeqFile::checkUnusedIsAlign(int unusedstart, int unusedend, bool zeroes, 
        Array<uint8_t> &datause){
    if(unusedend - unusedstart != 1 || !zeroes) return false;
    //One extra byte and it's a zero--maybe alignment before envelope?
    for(int j=0; j<structure.getNumChildren(); ++j){
        ValueTree section = structure.getChild(j);
        if((int)section.getProperty(idSType) != 4) continue;
        if((int)section.getProperty(idAddress) != unusedend) continue;
        ValueTree alignsec("align");
        alignsec.setProperty(idSType, 7, nullptr);
        alignsec.setProperty(idAddress, unusedstart, nullptr);
        alignsec.setProperty(idAddressEnd, unusedend, nullptr);
        alignsec.setProperty(idValue, 2, nullptr); //amount to align to
        structure.appendChild(alignsec, nullptr);
        datause.set(unusedstart, 1);
        return true;
    }
    return false;
}

void SeqFile::unusedToTableOrMsg(const Array<uint8_t> &data, Array<uint8_t> &datause,
        int unusedstart, int unusedend, bool zeroes, bool ismsg){
    dbgmsg("Warning: bytes " + hex(unusedstart,16) + ":" + hex(unusedend-1,16) + 
        (zeroes ? " (all zero)" : " (nonzeros)") 
        + " were not read as part of any command, converting to "
        + (ismsg ? "message" : "Other Table"));
    importresult |= 1;
    ValueTree section = ValueTree(ismsg ? "message" : "table");
    if(ismsg){
        section.setProperty(idMessage, 
            String((const char*)&(data.data())[unusedstart]), nullptr);
    }
    section.setProperty(idSType, ismsg ? 5 : 6, nullptr);
    section.setProperty(idAddress, unusedstart, nullptr);
    section.setProperty(idAddressEnd, unusedend, nullptr);
    structure.appendChild(section, nullptr);
    parseTableSection(structure.getNumChildren()-1, data, datause);
}


////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////// importCom //////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

int SeqFile::importCom(File comfile){
    int len = comfile.getSize();
    if(!comfile.existsAsFile() || len <= 0){
        dbgmsg("File " + comfile.getFullPathName() + " doesn't exist!");
        return 2;
    }
    if(len > 1000000){
        dbgmsg("File " + comfile.getFullPathName() + " is more than 1MB, probably not a sequence!");
        return 2;
    }
    FileInputStream fis(comfile);
    if(fis.failedToOpen()){
        dbgmsg("Couldn't open file " + comfile.getFullPathName() + "!");
        return 2;
    }
    dbgmsg("Loading " + String(len) + " bytes to sequence from " + comfile.getFullPathName());
    Array<uint8_t> data;
    data.ensureStorageAllocated(len);
    for(int i=0; i<len; ++i){
        data.add(fis.readByte());
    }
    seqname = comfile.getFileNameWithoutExtension();
    dbgmsg("Sequence starts with " 
            + hex(data[0]) + hex(data[1]) + hex(data[2]) + hex(data[3])
            + hex(data[4]) + hex(data[5]) + hex(data[6]) + hex(data[7]));
    //
    Array<uint8_t> datause;
    datause.insertMultiple(0, 0, len);
    structure = ValueTree("structure");
    Random::getSystemRandom().setSeedRandomly();
    importresult = 0;
    //
    ValueTree section = ValueTree("seqhdr");
    section.setProperty(idSType, 0, nullptr);
    section.setProperty(idAddress, 0, nullptr);
    structure.appendChild(section, nullptr);
    //
    //Passes:
    //0: normal sections
    //1: dyntables. After any dyntable, resets to beginning.
    //2: known tables.
    //3: unused data. Can continue into 0.
    int s = -1, pass = 0;
    while(true){
        ++s;
        if(s == structure.getNumChildren()){
            s = 0;
            ++pass;
            if(pass >= 4){
                dbgmsg("Internal error with com parsing passes!");
                return 2;
            }
        }
        if(pass == 3){
            //Unused data.
            s = -1; //Not in any particular section right now.
            int unusedstart, unusedend;
            bool zeroes, ismsg;
            if(!findFirstUnusedData(data, datause, unusedstart, unusedend, 
                zeroes, ismsg)) break;
            if(checkUnusedIsAlign(unusedstart, unusedend, zeroes, datause)) continue;
            //Check if this is immediately after a jump, continue previous section
            int j;
            for(j=0; j<structure.getNumChildren(); ++j){
                section = structure.getChild(j);
                if((int)section.getProperty(idAddressEnd, -1) != unusedstart) continue;
                if(section.getChild(section.getNumChildren()-1).getProperty(idAction).toString()
                        == "Jump"){
                    break;
                }
            }
            if(j < structure.getNumChildren()){
                dbgmsg("Continuing section " + String(j) + " stype " 
                    + structure.getChild(j).getProperty(idSType).toString() 
                    + " due to unused data after jump");
                int res = parseComSection(j, data, datause, true);
                if(res == 2){
                    return 2;
                }else if(res >= 0){
                    //Success or warning
                    s = -1;
                    pass = 0;
                    continue;
                }
                //Otherwise aborted
            }
            //Otherwise just make it a table
            unusedToTableOrMsg(data, datause, unusedstart, unusedend, zeroes, ismsg);
            continue;
        }
        section = structure.getChild(s);
        if(section.hasProperty(idAddressEnd)) continue; //already parsed
        int stype = section.getProperty(idSType);
        if(pass <= 1){
            //Normal sections (0) and dyntables (1).
            if(stype < 0 || stype == 6) continue; //Tables
            if(pass == 0 && stype == 3) continue; //Normal sections before dyntables
            int res = parseComSection(s, data, datause, false);
            if(res == 2) return 2;
            if(res == 1 || pass == 1){ //restart
                s = -1;
                pass = 0;
            }
        }else{
            //Known data tables (2).
            if(!(stype < 0 || stype == 6)){
                dbgmsg("Internal error, expected known data table, got " + String(stype) + "!");
                return 2;
            }
            if(!findTableEnd(s, data)) return 2;
            section.setProperty(idSType, 6, nullptr);
            parseTableSection(s, data, datause);
        }
    }
    //Sort sections by address
    for(int j=0; j<structure.getNumChildren(); ++j){
        ValueTree tmpsec2 = structure.getChild(j);
        tmpsec2.setProperty(idOldSectionIdx, j, nullptr);
    }
    SectionSorter sorter;
    structure.sort(sorter, nullptr, false);
    for(int j=0; j<structure.getNumChildren(); ++j){
        ValueTree tmpsec2 = structure.getChild(j);
        for(int k=0; k<tmpsec2.getNumChildren(); ++k){
            ValueTree cmd = tmpsec2.getChild(k);
            if(cmd.hasProperty(idTargetSection)){
                bool found = false;
                for(int s=0; s<structure.getNumChildren(); ++s){
                    ValueTree section = structure.getChild(s);
                    if(section.getProperty(idOldSectionIdx, -1) == cmd.getProperty(idTargetSection)){
                        cmd.setProperty(idTargetSection, s, nullptr);
                        found = true;
                        break;
                    }
                }
                if(!found){
                    dbgmsg("Internal error when sorting sections!");
                    return 2;
                }
            }
        }
    }
    for(int j=0; j<structure.getNumChildren(); ++j){
        ValueTree tmpsec2 = structure.getChild(j);
        tmpsec2.removeProperty(idOldSectionIdx, nullptr);
    }
    convertPtrsFirstCmd();
    return importresult;
}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////// exportCom functions /////////////////////////////
////////////////////////////////////////////////////////////////////////////////

 //Overwrite whatever is at address, don't resize
void SeqFile::writeCommand(Array<uint8_t> &data, uint32_t address, ValueTree command){
    if(!command.isValid()) return;
    ValueTree param;
    int i, p, datalen, value;
    String datasrc;
    //Write command byte
    int d = (int)command.getProperty(idCmd);
    if(d >= 0){
        //If the command has a command byte (dyntable, message, etc. don't)
        param = command.getChildWithProperty(idDataSrc, "offset");
        if(param.isValid()){
            d += (int)param.getProperty(idValue);
        }
        data.set(address, d);
        address++;
    }
    //Write parameters
    for(p=0; p<command.getNumChildren(); p++){
        param = command.getChild(p);
        datasrc = param.getProperty(idDataSrc, "fixed");
        datalen = param.getProperty(idDataLen, 0);
        value = param.getProperty(idValue, 0);
        if(datasrc == "offset"){
            //do nothing
        }else if(datasrc == "constant"){
            if(datalen != value){
                dbgmsg("Internal error with constant command value in cmd " 
                    + command.getProperty(idName, "Error").toString() + "!");
            }
        }else if(datasrc == "fixed"){
            for(i=datalen-1; i>=0; i--){
                d = (value & 0x000000FF);
                data.set(address+i, d);
                value >>= 8;
            }
            address += datalen;
        }else if(datasrc == "variable"){
            if(value >= 0x80 || param.getProperty(idDataForce2)){
                d = (value & 0x000000FF);
                data.set(address+1, d);
                value >>= 8;
                d = (value & 0x0000007F) | 0x80;
                data.set(address, d);
                address += 2;
            }else{
                d = value;
                data.set(address, d);
                address++;
            }
        }else{
            dbgmsg("Unknown datasrc: " + datasrc);
        }
    }
}

////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////// exportCom //////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

int SeqFile::exportCom(File comfile){
    if(!comfile.hasWriteAccess()){
        dbgmsg("No write access to " + comfile.getFullPathName() + "!");
        return 2;
    }
    FileOutputStream fos(comfile);
    if(fos.failedToOpen()){
        dbgmsg("Couldn't open file " + comfile.getFullPathName() + " for writing!");
        return 2;
    }
    fos.setPosition(0);
    fos.truncate();
    dbgmsg("Rendering sequence structure to binary data...");
    importresult = 0;
    Array<uint8_t> data;
    int maxseqsize = 0x8000; //OoT maximum is 0x3800
    data.ensureStorageAllocated(maxseqsize);
    data.insertMultiple(0, 0, maxseqsize);
    //Find lengths and addresses of everything
    uint32_t address = 0;
    int sec, cmd, len;
    ValueTree section, command;
    String action;
    for(sec=0; sec<structure.getNumChildren(); sec++){
        section = structure.getChild(sec);
        section.setProperty(idAddress, (int)address, nullptr);
        if(section.getType().toString() == "align"){
            int value = section.getProperty(idValue, -1);
            if(value != 2 && value != 16){
                dbgmsg("Invalid alignment: " + String(value));
                return 2;
            }
            uint32_t newaddr = (address + value - 1) & ~(value - 1);
            section.setProperty(idLength, (int)(newaddr - address), nullptr);
            dbgmsg("Aligning address " + hex(address,16) + " to " + hex(newaddr,16));
            address = newaddr;
            continue;
        }
        for(cmd=0; cmd<section.getNumChildren(); cmd++){
            command = section.getChild(cmd);
            command.setProperty(idAddress, (int)address, nullptr);
            len = getNewCommandLength(command);
            command.setProperty(idLength, len, nullptr);
            address += len;
        }
    }
    //Write data
    address = 0;
    int ptraddr = -1, ptrsec, ptrhash, cmd2;
    ValueTree section2, command2, param;
    for(sec=0; sec<structure.getNumChildren(); sec++){
        //dbgmsg("----Section " + String(sec));
        section = structure.getChild(sec);
        if(address != (int)section.getProperty(idAddress, -1)){
            dbgmsg(hex(address,16) + " address sanity check failed!"); return 2;
        }
        if(section.getType().toString() == "align"){
            for(int i=0; i<(int)section.getProperty(idLength); ++i) data.set(address++, 0);
            continue;
        }
        for(cmd=0; cmd<section.getNumChildren(); cmd++){
            command = section.getChild(cmd);
            if(address != (int)command.getProperty(idAddress, -1)){
                dbgmsg(hex(address,16) + " address sanity check failed!"); return 2;
            }
            action = command.getProperty(idAction, "No Action");
            len = command.getProperty(idLength, 1);
            //Get addresses of pointers
            if(command.hasProperty(idTargetSection)){
                ptrsec = command.getProperty(idTargetSection);
                if(ptrsec < 0 || ptrsec >= structure.getNumChildren()){
                    dbgmsg("Pointer to undefined section!");
                    importresult |= 2;
                }else{
                    section2 = structure.getChild(ptrsec);
                    if(command.hasProperty(idTargetHash)){
                        //Search for command with that hash
                        ptrhash = command.getProperty(idTargetHash);
                        ptraddr = -1;
                        for(cmd2=0; cmd2<section2.getNumChildren(); cmd2++){
                            command2 = section2.getChild(cmd2);
                            if((int)command2.getProperty(idHash) == ptrhash){
                                ptraddr = command2.getProperty(idAddress);
                                if(command.hasProperty(idTargetCmdByte)){
                                    ptraddr += (int)command.getProperty(idTargetCmdByte);
                                }
                                break;
                            }
                        }
                        if(ptraddr < 0){
                            dbgmsg("Could not find command with correct hash! Source sec "
                                + String(sec) + " cmd " + String(cmd) + " action " + action 
                                + " target section " + String(ptrsec) + " target hash " + String(ptrhash));
                            ptraddr = 0;
                            importresult |= 2;
                        }
                    }else{
                        ptraddr = section2.getProperty(idAddress);
                        if(command.hasProperty(idTargetCmdByte)){
                            dbgmsg("Command with target command byte but no target hash!");
                            importresult |= 2;
                        }
                    }
                }
                //Put in relative/absolute address
                param = command.getChildWithProperty(idMeaning, "Absolute Address");
                if(param.isValid()){
                    param.setProperty(idValue, ptraddr, nullptr);
                }else{
                    param = command.getChildWithProperty(idMeaning, "Relative Address");
                    if(param.isValid()){
                        param.setProperty(idValue, (int)(ptraddr - (address + len)), nullptr);
                    }else{
                        dbgmsg("Command had idTargetSection but no parameters with absolute or relative address!");
                        importresult |= 2;
                    }
                }
            }
            writeCommand(data, address, command);
            address += len;
            //Enlarge data if necessary
            if(address >= (maxseqsize - 0x100)){
                dbgmsg("Warning, sequence extremely large, probably bug!");
                importresult |= 1;
                data.ensureStorageAllocated(maxseqsize * 2);
                data.insertMultiple(maxseqsize, 0, maxseqsize);
                maxseqsize *= 2;
            }
        }
    }
    //Shrink data
    data.removeRange(address, data.size() - address);
    //Write file
    for(int i=0; i<data.size(); ++i){
        fos.writeByte(data[i]);
    }
    fos.flush();
    dbgmsg("Saved " + String(data.size()) + " bytes from sequence to " + comfile.getFullPathName());
    return importresult;
}
