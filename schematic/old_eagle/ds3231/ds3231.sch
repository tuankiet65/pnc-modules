<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.3.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Maxim_By_element14_Batch_1">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 30/07/2012 11:04:18</description>
<packages>
<package name="SOIC127P1032X265-16N">
<smd name="1" x="-4.699" y="4.445" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="2" x="-4.699" y="3.175" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="3" x="-4.699" y="1.905" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="4" x="-4.699" y="0.635" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="5" x="-4.699" y="-0.635" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="6" x="-4.699" y="-1.905" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="7" x="-4.699" y="-3.175" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="8" x="-4.699" y="-4.445" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="9" x="4.699" y="-4.445" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="10" x="4.699" y="-3.175" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="11" x="4.699" y="-1.905" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="12" x="4.699" y="-0.635" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="13" x="4.699" y="0.635" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="14" x="4.699" y="1.905" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="15" x="4.699" y="3.175" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="16" x="4.699" y="4.445" dx="1.9812" dy="0.5334" layer="1"/>
<wire x1="-3.81" y1="4.191" x2="-3.81" y2="4.699" width="0" layer="51"/>
<wire x1="-3.81" y1="4.699" x2="-5.334" y2="4.699" width="0" layer="51"/>
<wire x1="-5.334" y1="4.699" x2="-5.334" y2="4.191" width="0" layer="51"/>
<wire x1="-5.334" y1="4.191" x2="-3.81" y2="4.191" width="0" layer="51"/>
<wire x1="-3.81" y1="2.921" x2="-3.81" y2="3.429" width="0" layer="51"/>
<wire x1="-3.81" y1="3.429" x2="-5.334" y2="3.429" width="0" layer="51"/>
<wire x1="-5.334" y1="3.429" x2="-5.334" y2="2.921" width="0" layer="51"/>
<wire x1="-5.334" y1="2.921" x2="-3.81" y2="2.921" width="0" layer="51"/>
<wire x1="-3.81" y1="1.651" x2="-3.81" y2="2.159" width="0" layer="51"/>
<wire x1="-3.81" y1="2.159" x2="-5.334" y2="2.159" width="0" layer="51"/>
<wire x1="-5.334" y1="2.159" x2="-5.334" y2="1.651" width="0" layer="51"/>
<wire x1="-5.334" y1="1.651" x2="-3.81" y2="1.651" width="0" layer="51"/>
<wire x1="-3.81" y1="0.381" x2="-3.81" y2="0.889" width="0" layer="51"/>
<wire x1="-3.81" y1="0.889" x2="-5.334" y2="0.889" width="0" layer="51"/>
<wire x1="-5.334" y1="0.889" x2="-5.334" y2="0.381" width="0" layer="51"/>
<wire x1="-5.334" y1="0.381" x2="-3.81" y2="0.381" width="0" layer="51"/>
<wire x1="-3.81" y1="-0.889" x2="-3.81" y2="-0.381" width="0" layer="51"/>
<wire x1="-3.81" y1="-0.381" x2="-5.334" y2="-0.381" width="0" layer="51"/>
<wire x1="-5.334" y1="-0.381" x2="-5.334" y2="-0.889" width="0" layer="51"/>
<wire x1="-5.334" y1="-0.889" x2="-3.81" y2="-0.889" width="0" layer="51"/>
<wire x1="-3.81" y1="-2.159" x2="-3.81" y2="-1.651" width="0" layer="51"/>
<wire x1="-3.81" y1="-1.651" x2="-5.334" y2="-1.651" width="0" layer="51"/>
<wire x1="-5.334" y1="-1.651" x2="-5.334" y2="-2.159" width="0" layer="51"/>
<wire x1="-5.334" y1="-2.159" x2="-3.81" y2="-2.159" width="0" layer="51"/>
<wire x1="-3.81" y1="-3.429" x2="-3.81" y2="-2.921" width="0" layer="51"/>
<wire x1="-3.81" y1="-2.921" x2="-5.334" y2="-2.921" width="0" layer="51"/>
<wire x1="-5.334" y1="-2.921" x2="-5.334" y2="-3.429" width="0" layer="51"/>
<wire x1="-5.334" y1="-3.429" x2="-3.81" y2="-3.429" width="0" layer="51"/>
<wire x1="-3.81" y1="-4.699" x2="-3.81" y2="-4.191" width="0" layer="51"/>
<wire x1="-3.81" y1="-4.191" x2="-5.334" y2="-4.191" width="0" layer="51"/>
<wire x1="-5.334" y1="-4.191" x2="-5.334" y2="-4.699" width="0" layer="51"/>
<wire x1="-5.334" y1="-4.699" x2="-3.81" y2="-4.699" width="0" layer="51"/>
<wire x1="3.81" y1="-4.191" x2="3.81" y2="-4.699" width="0" layer="51"/>
<wire x1="3.81" y1="-4.699" x2="5.334" y2="-4.699" width="0" layer="51"/>
<wire x1="5.334" y1="-4.699" x2="5.334" y2="-4.191" width="0" layer="51"/>
<wire x1="5.334" y1="-4.191" x2="3.81" y2="-4.191" width="0" layer="51"/>
<wire x1="3.81" y1="-2.921" x2="3.81" y2="-3.429" width="0" layer="51"/>
<wire x1="3.81" y1="-3.429" x2="5.334" y2="-3.429" width="0" layer="51"/>
<wire x1="5.334" y1="-3.429" x2="5.334" y2="-2.921" width="0" layer="51"/>
<wire x1="5.334" y1="-2.921" x2="3.81" y2="-2.921" width="0" layer="51"/>
<wire x1="3.81" y1="-1.651" x2="3.81" y2="-2.159" width="0" layer="51"/>
<wire x1="3.81" y1="-2.159" x2="5.334" y2="-2.159" width="0" layer="51"/>
<wire x1="5.334" y1="-2.159" x2="5.334" y2="-1.651" width="0" layer="51"/>
<wire x1="5.334" y1="-1.651" x2="3.81" y2="-1.651" width="0" layer="51"/>
<wire x1="3.81" y1="-0.381" x2="3.81" y2="-0.889" width="0" layer="51"/>
<wire x1="3.81" y1="-0.889" x2="5.334" y2="-0.889" width="0" layer="51"/>
<wire x1="5.334" y1="-0.889" x2="5.334" y2="-0.381" width="0" layer="51"/>
<wire x1="5.334" y1="-0.381" x2="3.81" y2="-0.381" width="0" layer="51"/>
<wire x1="3.81" y1="0.889" x2="3.81" y2="0.381" width="0" layer="51"/>
<wire x1="3.81" y1="0.381" x2="5.334" y2="0.381" width="0" layer="51"/>
<wire x1="5.334" y1="0.381" x2="5.334" y2="0.889" width="0" layer="51"/>
<wire x1="5.334" y1="0.889" x2="3.81" y2="0.889" width="0" layer="51"/>
<wire x1="3.81" y1="2.159" x2="3.81" y2="1.651" width="0" layer="51"/>
<wire x1="3.81" y1="1.651" x2="5.334" y2="1.651" width="0" layer="51"/>
<wire x1="5.334" y1="1.651" x2="5.334" y2="2.159" width="0" layer="51"/>
<wire x1="5.334" y1="2.159" x2="3.81" y2="2.159" width="0" layer="51"/>
<wire x1="3.81" y1="3.429" x2="3.81" y2="2.921" width="0" layer="51"/>
<wire x1="3.81" y1="2.921" x2="5.334" y2="2.921" width="0" layer="51"/>
<wire x1="5.334" y1="2.921" x2="5.334" y2="3.429" width="0" layer="51"/>
<wire x1="5.334" y1="3.429" x2="3.81" y2="3.429" width="0" layer="51"/>
<wire x1="3.81" y1="4.699" x2="3.81" y2="4.191" width="0" layer="51"/>
<wire x1="3.81" y1="4.191" x2="5.334" y2="4.191" width="0" layer="51"/>
<wire x1="5.334" y1="4.191" x2="5.334" y2="4.699" width="0" layer="51"/>
<wire x1="5.334" y1="4.699" x2="3.81" y2="4.699" width="0" layer="51"/>
<wire x1="-3.81" y1="-5.2578" x2="3.81" y2="-5.2578" width="0" layer="51"/>
<wire x1="3.81" y1="-5.2578" x2="3.81" y2="5.2578" width="0" layer="51"/>
<wire x1="3.81" y1="5.2578" x2="0.3048" y2="5.2578" width="0" layer="51"/>
<wire x1="0.3048" y1="5.2578" x2="-0.3048" y2="5.2578" width="0" layer="51"/>
<wire x1="-0.3048" y1="5.2578" x2="-3.81" y2="5.2578" width="0" layer="51"/>
<wire x1="-3.81" y1="5.2578" x2="-3.81" y2="-5.2578" width="0" layer="51"/>
<wire x1="0.3048" y1="5.2578" x2="-0.3048" y2="5.2578" width="0" layer="51" curve="-180"/>
<text x="-5.5118" y="4.8514" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="5.969" y1="-3.2258" x2="7.0612" y2="-3.2512" width="0.1524" layer="21"/>
<wire x1="3.81" y1="5.0546" x2="3.81" y2="5.2578" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-5.0546" x2="-3.81" y2="-5.2578" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-5.2578" x2="3.81" y2="-5.2578" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-5.2578" x2="3.81" y2="-5.0546" width="0.1524" layer="21"/>
<wire x1="3.81" y1="5.2578" x2="0.3048" y2="5.2578" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="5.2578" x2="-0.3048" y2="5.2578" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="5.2578" x2="-3.81" y2="5.2578" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="5.2578" x2="-3.81" y2="5.0546" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="5.2578" x2="-0.3048" y2="5.2578" width="0.1524" layer="21" curve="-180"/>
<text x="-5.5118" y="4.8514" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-3.4544" y="6.985" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-8.255" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="DS3231SN">
<pin name="VCC" x="-17.78" y="15.24" length="middle" direction="pwr"/>
<pin name="VBAT" x="-17.78" y="12.7" length="middle" direction="pwr"/>
<pin name="SCL" x="-17.78" y="7.62" length="middle" direction="in"/>
<pin name="~RST" x="-17.78" y="5.08" length="middle"/>
<pin name="N.C._2" x="-17.78" y="0" length="middle" direction="nc"/>
<pin name="N.C._3" x="-17.78" y="-2.54" length="middle" direction="nc"/>
<pin name="N.C._4" x="-17.78" y="-5.08" length="middle" direction="nc"/>
<pin name="N.C._5" x="-17.78" y="-7.62" length="middle" direction="nc"/>
<pin name="N.C._6" x="-17.78" y="-10.16" length="middle" direction="nc"/>
<pin name="N.C._7" x="-17.78" y="-12.7" length="middle" direction="nc"/>
<pin name="N.C._8" x="-17.78" y="-15.24" length="middle" direction="nc"/>
<pin name="N.C." x="-17.78" y="-17.78" length="middle" direction="nc"/>
<pin name="GND" x="-17.78" y="-22.86" length="middle" direction="pas"/>
<pin name="32KHZ" x="17.78" y="15.24" length="middle" direction="out" rot="R180"/>
<pin name="SDA" x="17.78" y="12.7" length="middle" rot="R180"/>
<pin name="~INT/SQW" x="17.78" y="10.16" length="middle" direction="out" rot="R180"/>
<wire x1="-12.7" y1="20.32" x2="-12.7" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-27.94" x2="12.7" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-27.94" x2="12.7" y2="20.32" width="0.4064" layer="94"/>
<wire x1="12.7" y1="20.32" x2="-12.7" y2="20.32" width="0.4064" layer="94"/>
<text x="-4.8768" y="22.2758" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.1816" y="-31.4198" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DS3231SN" prefix="U">
<description>Extremely Accurate I2C-Integrated RTC/TCXO/Crystal</description>
<gates>
<gate name="A" symbol="DS3231SN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC127P1032X265-16N">
<connects>
<connect gate="A" pin="32KHZ" pad="1"/>
<connect gate="A" pin="GND" pad="13"/>
<connect gate="A" pin="N.C." pad="6"/>
<connect gate="A" pin="N.C._2" pad="5"/>
<connect gate="A" pin="N.C._3" pad="7"/>
<connect gate="A" pin="N.C._4" pad="10"/>
<connect gate="A" pin="N.C._5" pad="11"/>
<connect gate="A" pin="N.C._6" pad="12"/>
<connect gate="A" pin="N.C._7" pad="8"/>
<connect gate="A" pin="N.C._8" pad="9"/>
<connect gate="A" pin="SCL" pad="16"/>
<connect gate="A" pin="SDA" pad="15"/>
<connect gate="A" pin="VBAT" pad="14"/>
<connect gate="A" pin="VCC" pad="2"/>
<connect gate="A" pin="~INT/SQW" pad="3"/>
<connect gate="A" pin="~RST" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="DS3231SN#" constant="no"/>
<attribute name="OC_FARNELL" value="1593292" constant="no"/>
<attribute name="OC_NEWARK" value="68K3406" constant="no"/>
<attribute name="PACKAGE" value="SOIC-16" constant="no"/>
<attribute name="SUPPLIER" value="Maxim" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="Maxim_By_element14_Batch_1" deviceset="DS3231SN" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="A" x="58.42" y="35.56"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
