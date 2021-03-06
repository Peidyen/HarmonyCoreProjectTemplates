<CODEGEN_FILENAME><StructureNoplural>MetaData.dbl</CODEGEN_FILENAME>
<REQUIRES_CODEGEN_VERSION>5.3.13</REQUIRES_CODEGEN_VERSION>
;//****************************************************************************
;//
;// Title:       ODataMetaData.tpl
;//
;// Type:        CodeGen Template
;//
;// Description: Template to define meta data associated with a data model
;//
;// Copyright (c) 2012, Synergex International, Inc. All rights reserved.
;//
;// Redistribution and use in source and binary forms, with or without
;// modification, are permitted provided that the following conditions are met:
;//
;// * Redistributions of source code must retain the above copyright notice,
;//   this list of conditions and the following disclaimer.
;//
;// * Redistributions in binary form must reproduce the above copyright notice,
;//   this list of conditions and the following disclaimer in the documentation
;//   and/or other materials provided with the distribution.
;//
;// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
;// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
;// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
;// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
;// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
;// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
;// POSSIBILITY OF SUCH DAMAGE.
;//
;;*****************************************************************************
;;
;; Title:       <StructureNoplural>MetaData.dbl
;;
;; Description: Defines meta data associated with a <StructureNoplural> model.
;;
;;*****************************************************************************
;; WARNING: GENERATED CODE!
;; This file was generated by CodeGen. Avoid editing the file if possible.
;; Any changes you make will be lost of the file is re-generated.
;;*****************************************************************************

import System
import System.Collections.Generic
import System.Text
import Harmony.Core
import Harmony.Core.Converters

namespace <NAMESPACE>

    .include "<STRUCTURE_NOALIAS>" repository, public structure="str<StructureNoplural>", end

    ;;; <summary>
    ;;; Exposes metadata relating to the <StructureNoplural> model class.
    ;;; </summary>
    public partial class <StructureNoplural>Metadata extends DataObjectMetadataBase

;//
;//    Instantiate any required convertert
;//
<FIELD_LOOP>
    <IF CUSTOM_NOT_HARMONY_EXCLUDE>
        <IF DATEORTIME>
          <IF DATE_YYMMDD>
            <IF CUSTOM_HARMONY_AS_STRING>
        private m<FieldSqlname>Formatter, @ILiteralFormatter, new SynergyDecimalConverter.LiteralFormatter("XX-XX-XX")
            <ELSE>
        private m<FieldSqlname>Formatter, @ILiteralFormatter, new SynergyDecimalDateConverter.LiteralFormatter("FORMAT:YYMMDD")
            </IF CUSTOM_HARMONY_AS_STRING>
          </IF DATE_YYMMDD>
          <IF DATE_YYYYMMDD>
            <IF CUSTOM_HARMONY_AS_STRING>
        private m<FieldSqlname>Formatter, @ILiteralFormatter, new SynergyDecimalConverter.LiteralFormatter("XXXX-XX-XX")
            <ELSE>
        private m<FieldSqlname>Formatter, @ILiteralFormatter, new SynergyDecimalDateConverter.LiteralFormatter("FORMAT:YYYYMMDD")
            </IF CUSTOM_HARMONY_AS_STRING>
          </IF DATE_YYYYMMDD>
          <IF TIME>
            <IF CUSTOM_HARMONY_AS_STRING>
            <IF TIME_HHMM>
        private m<FieldSqlname>Formatter, @ILiteralFormatter, new SynergyDecimalConverter.LiteralFormatter("XX:XX")
            </IF TIME_HHMM>
            <IF TIME_HHMMSS>
        private m<FieldSqlname>Formatter, @ILiteralFormatter, new SynergyDecimalConverter.LiteralFormatter("XX:XX:XX")
            </IF TIME_HHMMSS>
            <ELSE>
        private m<FieldSqlname>Formatter, @ILiteralFormatter, new SynergyDecimalDateConverter.LiteralFormatter("FORMAT:HHMM")
            </IF CUSTOM_HARMONY_AS_STRING>
          </IF TIME>
        <ELSE>
            <IF CUSTOM_HARMONY_AS_STRING>
        private m<FieldSqlname>Formatter, @ILiteralFormatter, new SynergyDecimalConverter.LiteralFormatter("<FIELD_FORMATSTRING>")
            <ELSE>
            </IF CUSTOM_HARMONY_AS_STRING>
        </IF DATEORTIME>
    </IF CUSTOM_NOT_HARMONY_EXCLUDE>
</FIELD_LOOP>

        ;;; <summary>
        ;;; Constructs an new <StructureNoplural>Metadata object.
        ;;; </summary>
        public method <StructureNoplural>Metadata
        proc
            RPSStructureName = "<STRUCTURE_NOALIAS>"
            RPSStructureSize = ^size(str<StructureNoplural>)
;//
;//    Add definitions for the structures fields
;//

<FIELD_LOOP>
<IF STRUCTURE_RELATIVE>
            AddFieldInfo("RecordNumber", "INTEGER", 4, 0, 0, false)
</IF STRUCTURE_RELATIVE>
    <IF CUSTOM_NOT_HARMONY_EXCLUDE>
        <IF DATEORTIME>
          <IF DATE_YYMMDD>
            <IF CUSTOM_HARMONY_AS_STRING>
            AddFieldInfo("<FieldSqlname>", "<FIELD_TYPE_NAME>", <FIELD_SIZE>, <FIELD_POSITION>, 0<FIELD_PRECISION>, false, m<FieldSqlname>Formatter)
            <ELSE>
            AddFieldInfo("<FieldSqlname>", "<FIELD_TYPE_NAME>", <FIELD_SIZE>, <FIELD_POSITION>, 0<FIELD_PRECISION>, false, m<FieldSqlname>Formatter)
            </IF CUSTOM_HARMONY_AS_STRING>
          </IF DATE_YYMMDD>
          <IF DATE_YYYYMMDD>
            <IF CUSTOM_HARMONY_AS_STRING>
            AddFieldInfo("<FieldSqlname>", "<FIELD_TYPE_NAME>", <FIELD_SIZE>, <FIELD_POSITION>, 0<FIELD_PRECISION>, false, m<FieldSqlname>Formatter)
            <ELSE>
            AddFieldInfo("<FieldSqlname>", "<FIELD_TYPE_NAME>", <FIELD_SIZE>, <FIELD_POSITION>, 0<FIELD_PRECISION>, false, m<FieldSqlname>Formatter)
            </IF CUSTOM_HARMONY_AS_STRING>
          </IF DATE_YYYYMMDD>
          <IF TIME>
            <IF CUSTOM_HARMONY_AS_STRING>
            <IF TIME_HHMM>
            AddFieldInfo("<FieldSqlname>", "<FIELD_TYPE_NAME>", <FIELD_SIZE>, <FIELD_POSITION>, 0<FIELD_PRECISION>, false, m<FieldSqlname>Formatter)
            </IF TIME_HHMM>
            <IF TIME_HHMMSS>
            AddFieldInfo("<FieldSqlname>", "<FIELD_TYPE_NAME>", <FIELD_SIZE>, <FIELD_POSITION>, 0<FIELD_PRECISION>, false, m<FieldSqlname>Formatter)
            </IF TIME_HHMMSS>
            <ELSE>
            AddFieldInfo("<FieldSqlname>", "<FIELD_TYPE_NAME>", <FIELD_SIZE>, <FIELD_POSITION>, 0<FIELD_PRECISION>, false, m<FieldSqlname>Formatter)
            </IF CUSTOM_HARMONY_AS_STRING>
          </IF TIME>
        <ELSE>
            <IF CUSTOM_HARMONY_AS_STRING>
            AddFieldInfo("<FieldSqlname>", "<FIELD_TYPE_NAME>", <FIELD_SIZE>, <FIELD_POSITION>, 0<FIELD_PRECISION>, false, m<FieldSqlname>Formatter)
            <ELSE>
            AddFieldInfo("<FieldSqlname>", "<FIELD_TYPE_NAME>", <FIELD_SIZE>, <FIELD_POSITION>, 0<FIELD_PRECISION>, false)
            </IF CUSTOM_HARMONY_AS_STRING>
        </IF DATEORTIME>
    </IF CUSTOM_NOT_HARMONY_EXCLUDE>
</FIELD_LOOP>
;//
;//
;// Add definitions for the properties related to relations
;//
<IF DEFINED_ENABLE_RELATIONS>
  <IF STRUCTURE_RELATIONS>
    <RELATION_LOOP>
      <IF TO_STRUCTURE_INCLUDED>
;//
        <IF MANY_TO_ONE_TO_MANY>
            AddFieldInfo("REL_<RelationTostructureNoplural>", "DATAOBJECT", 0, 0, 0, false)
        </IF MANY_TO_ONE_TO_MANY>
;//
        <IF ONE_TO_ONE_TO_ONE>
            AddFieldInfo("REL_<RelationTostructureNoplural>", "DATAOBJECT", 0, 0, 0, false)
        </IF ONE_TO_ONE_TO_ONE>
;//
        <IF ONE_TO_ONE>
            AddFieldInfo("REL_<RelationTostructureNoplural>", "DATAOBJECT", 0, 0, 0, false)
        </IF ONE_TO_ONE>
;//
        <IF ONE_TO_MANY_TO_ONE>
            AddFieldInfo("REL_<RelationTostructurePlural>", "COLLECTION", 0, 0, 0, false)
        </IF ONE_TO_MANY_TO_ONE>
;//
        <IF ONE_TO_MANY>
            AddFieldInfo("REL_<RelationTostructurePlural>", "COLLECTION", 0, 0, 0, false)
        </IF ONE_TO_MANY>
;//
      </IF TO_STRUCTURE_INCLUDED>
    </RELATION_LOOP>
;//
;//    Add definitions for the properties related to literal field segments
;//
    <RELATION_LOOP>
      <COUNTER_1_RESET>
      <FROM_KEY_SEGMENT_LOOP>
        <IF SEG_TYPE_LITERAL>
            AddFieldInfo("<RelationFromkey>Literal<COUNTER_1_INCREMENT><COUNTER_1_VALUE>", "TAG_LITERAL", 0, 0, 0, false,^null,"<SEGMENT_LITVAL>")
        </IF SEG_TYPE_LITERAL>
      </FROM_KEY_SEGMENT_LOOP>
    </RELATION_LOOP>
  </IF STRUCTURE_RELATIONS>
</IF DEFINED_ENABLE_RELATIONS>
;//
;//    Declare all of the fields associated with key segments
;//

<IF STRUCTURE_ISAM>
  <KEY_LOOP>
    <SEGMENT_LOOP>
            AddKeyInfo(<KEY_NUMBER>, "<FieldSqlname>")
    </SEGMENT_LOOP>
  </KEY_LOOP>
</IF STRUCTURE_ISAM>
<IF STRUCTURE_RELATIVE>
            AddKeyInfo(0, "recordNumber")
</IF STRUCTURE_RELATIVE>

<IF STRUCTURE_ISAM>
  <KEY_LOOP>
            data <KeyName>_KeyParts = new FieldDataDefinition[<KEY_SEGMENTS>]
    <SEGMENT_LOOP>
      <IF SEG_TYPE_LITERAL>
            <KeyName>_KeyParts[<SEGMENT_NUMBER>] = AddFieldInfo("<KEY_NAME>Literal<SEGMENT_NUMBER>", "TAG_LITERAL", <SEGMENT_LENGTH>, 0, 0, false,^null,"<SEGMENT_LITVAL>")
      <ELSE>
            <KeyName>_KeyParts[<SEGMENT_NUMBER>] = GetFieldByName("<FieldSqlname>")
      </IF SEG_TYPE_LITERAL>
    </SEGMENT_LOOP>
            AddFieldInfo("KEY_<KEY_NAME>", "COMPOSITE", 0, 0, 0, false, ^null, ^null, <KeyName>_KeyParts)

  </KEY_LOOP>

  <FOREIGN_KEY_LOOP>
            data <KeyName>_KeyParts = new FieldDataDefinition[<KEY_SEGMENTS>]
    <SEGMENT_LOOP>
      <IF SEG_TYPE_LITERAL>
            <KeyName>_KeyParts[<SEGMENT_NUMBER>] = AddFieldInfo("<KEY_NAME>Literal<SEGMENT_NUMBER>", "TAG_LITERAL", <SEGMENT_LENGTH>, 0, 0, false,^null,"<SEGMENT_LITVAL>")
      <ELSE>
            <KeyName>_KeyParts[<SEGMENT_NUMBER>] = GetFieldByName("<FieldSqlname>")
      </IF SEG_TYPE_LITERAL>
    </SEGMENT_LOOP>
            AddFieldInfo("KEY_<KEY_NAME>", "COMPOSITE", 0, 0, 0, false, ^null, ^null, <KeyName>_KeyParts)

  </FOREIGN_KEY_LOOP>
</IF STRUCTURE_ISAM>

        InitializeCustomFields()
        endmethod

        ;;; <summary>
        ;;; Returns a new <StructureNoplural> object containing data from a record and a GRFA.
<IF DEFINED_ENABLE_RELATIONS>
<IF STRUCTURE_RELATIONS>
        ;;; The related data properties (<RELATION_LOOP><IF TO_STRUCTURE_INCLUDED><IF MANY_TO_ONE_TO_MANY>REL_<RelationTostructureNoplural></IF MANY_TO_ONE_TO_MANY><IF ONE_TO_ONE>REL_<RelationTostructureNoplural></IF ONE_TO_ONE><IF ONE_TO_MANY_TO_ONE>REL_<RelationTostructurePlural></IF ONE_TO_MANY_TO_ONE><IF ONE_TO_MANY>REL_<RelationTostructurePlural></IF ONE_TO_MANY><,and></IF TO_STRUCTURE_INCLUDED></RELATION_LOOP>) will not be populated.
</IF STRUCTURE_RELATIONS>
</IF DEFINED_ENABLE_RELATIONS>
        ;;; </summary>
        ;;; <param name="dataArea">The record containing the data for the new <StructureNoplural> object.</param>
        ;;; <param name="grfa">The GRFA associated with the current state of the data.</param>
        ;;; <returns></returns>
        public override method MakeNew, @DataObjectBase
            required in dataArea, a
            required in grfa, a
        proc
            mreturn new <StructureNoplural>((str<StructureNoplural>)dataArea) { GlobalRFA = grfa }
        endmethod

        ;;; <summary>
        ;;; Returns a new <StructureNoplural> object containing data from a record and a GRFA.
<IF DEFINED_ENABLE_RELATIONS>
  <IF STRUCTURE_RELATIONS>
        ;;; The related data properties (<RELATION_LOOP><IF TO_STRUCTURE_INCLUDED><IF MANY_TO_ONE_TO_MANY>REL_<RelationTostructureNoplural></IF MANY_TO_ONE_TO_MANY><IF ONE_TO_ONE>REL_<RelationTostructureNoplural></IF ONE_TO_ONE><IF ONE_TO_MANY_TO_ONE>REL_<RelationTostructurePlural></IF ONE_TO_MANY_TO_ONE><IF ONE_TO_MANY>REL_<RelationTostructurePlural></IF ONE_TO_MANY><,and></IF TO_STRUCTURE_INCLUDED></RELATION_LOOP>) will be populated.
  </IF STRUCTURE_RELATIONS>
</IF DEFINED_ENABLE_RELATIONS>
        ;;; </summary>
        ;;; <param name="dataArea">The record containing the data for the new <StructureNoplural> object.</param>
        ;;; <param name="grfa">The GRFA associated with the current state of the data.</param>
        ;;; <param name="joinedObjects">Data to allow the related data properties <IF DEFINED_ENABLE_RELATIONS><IF STRUCTURE_RELATIONS>(<RELATION_LOOP><IF TO_STRUCTURE_INCLUDED><IF MANY_TO_ONE_TO_MANY>REL_<RelationTostructureNoplural></IF MANY_TO_ONE_TO_MANY><IF ONE_TO_ONE>REL_<RelationTostructureNoplural></IF ONE_TO_ONE><IF ONE_TO_MANY_TO_ONE>REL_<RelationTostructurePlural></IF ONE_TO_MANY_TO_ONE><IF ONE_TO_MANY>REL_<RelationTostructurePlural></IF ONE_TO_MANY><,and></IF TO_STRUCTURE_INCLUDED></RELATION_LOOP>) </IF STRUCTURE_RELATIONS></IF DEFINED_ENABLE_RELATIONS>to be populated.</param>
        ;;; <returns></returns>
        public override method MakeNew, @DataObjectBase
            required in dataArea, a
            required in grfa, a
            required in joinedObjects, [#]KeyValuePair<String, Object>
        proc
            data new<StructureNoplural> = new <StructureNoplural>((str<StructureNoplural>)dataArea) { GlobalRFA = grfa }
<IF DEFINED_ENABLE_RELATIONS>
  <IF STRUCTURE_RELATIONS>
            data joinedObject, KeyValuePair<String, Object>
            foreach joinedObject in joinedObjects
            begin
                using joinedObject.Key select
    <RELATION_LOOP>
      <IF TO_STRUCTURE_INCLUDED>
;//
        <IF MANY_TO_ONE_TO_MANY>
                ("REL_<RelationTostructureNoplural>"),
                    new<StructureNoplural>.REL_<RelationTostructureNoplural> = (@<RelationTostructureNoplural>)joinedObject.Value
        </IF MANY_TO_ONE_TO_MANY>
;//
        <IF ONE_TO_ONE>
                ("REL_<RelationTostructureNoplural>"),
                    new<StructureNoplural>.REL_<RelationTostructureNoplural> = (@<RelationTostructureNoplural>)joinedObject.Value
        </IF ONE_TO_ONE>
;//
        <IF ONE_TO_MANY_TO_ONE>
                ("REL_<RelationTostructurePlural>"),
                    new<StructureNoplural>.REL_<RelationTostructurePlural> = (@ICollection<<RelationTostructureNoplural>>)joinedObject.Value
        </IF ONE_TO_MANY_TO_ONE>
;//
        <IF ONE_TO_MANY>
                ("REL_<RelationTostructurePlural>"),
                    new<StructureNoplural>.REL_<RelationTostructurePlural> = (@ICollection<<RelationTostructureNoplural>>)joinedObject.Value
        </IF ONE_TO_MANY>
;//
      </IF TO_STRUCTURE_INCLUDED>
    </RELATION_LOOP>
                endusing
            end
  </IF STRUCTURE_RELATIONS>
</IF DEFINED_ENABLE_RELATIONS>

            mreturn new<StructureNoplural>

        endmethod

<IF STRUCTURE_ISAM>
        ;;; <summary>
        ;;; Formats a literal value for a key lookup.
        ;;; </summary>
        ;;; <param name="keyNumber">Key number.</param>
        ;;; <param name="parts">Dictionary containing key segment names and values.</param>
        ;;; <returns></returns>
        public override method FormatKeyLiteral, a
            required in keyNumber, int
            required in parts, @Dictionary<String, Object>
            endparams
  <KEY_LOOP>
            stack record key<KEY_NUMBER>
    <SEGMENT_LOOP>
                <FieldSqlName>, <SEGMENT_SPEC>
    </SEGMENT_LOOP>
            endrecord
  </KEY_LOOP>
        proc
            data startPos = 0
            data segValueLength, int
            using keyNumber select
  <KEY_LOOP>
            (<KEY_NUMBER>),
            begin
    <SEGMENT_LOOP>
      <IF DATEORTIME>
                if((segValueLength=KeyValueHelper(key<KEY_NUMBER>.<FieldSqlName>, "<FieldSqlname>", parts, m<FieldSqlname>Formatter))<<SEGMENT_LENGTH>)
                    mreturn key<KEY_NUMBER>(1:startPos+segValueLength)
      <ELSE>
        <IF CUSTOM_HARMONY_AS_STRING>
                if((segValueLength=KeyValueHelper(key<KEY_NUMBER>.<FieldSqlName>, "<FieldSqlname>", parts, m<FieldSqlname>Formatter))<<SEGMENT_LENGTH>)
                    mreturn key<KEY_NUMBER>(1:startPos+segValueLength)
        <ELSE>
                if((segValueLength=KeyValueHelper(key<KEY_NUMBER>.<FieldSqlName>, "<FieldSqlname>", parts))<<SEGMENT_LENGTH>)
                    mreturn key<KEY_NUMBER>(1:startPos+segValueLength)
        </IF CUSTOM_HARMONY_AS_STRING>
      </IF DATEORTIME>
        <IF MORE>
                startPos += <SEGMENT_LENGTH>
        </IF MORE>
    </SEGMENT_LOOP>
                mreturn key<KEY_NUMBER>
            end
  </KEY_LOOP>
            endusing

            throw new ApplicationException(String.Format("Invalid key number {0} encountered in <StructureNoplural>Metadata.FormatKeyLiteral",keyNumber))

        endmethod

</IF STRUCTURE_ISAM>

    private partial method InitializeCustomFields, void
    proc
    endmethod
    endclass

endnamespace
