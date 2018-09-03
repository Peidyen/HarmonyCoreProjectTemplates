<CODEGEN_FILENAME>PostManTests.postman_collection.json</CODEGEN_FILENAME>
<REQUIRES_CODEGEN_VERSION>5.3.5</REQUIRES_CODEGEN_VERSION>
<REQUIRES_USERTOKEN>API_TITLE</REQUIRES_USERTOKEN>
<REQUIRES_USERTOKEN>SERVER_BASE_PATH</REQUIRES_USERTOKEN>
<REQUIRES_USERTOKEN>SERVER_HTTPS_PORT</REQUIRES_USERTOKEN>
<REQUIRES_USERTOKEN>SERVER_NAME</REQUIRES_USERTOKEN>
<REQUIRES_USERTOKEN>SERVER_PROTOCOL</REQUIRES_USERTOKEN>
{
    "info": {
        "_postman_id": "<guid_nobrace>",
        "name": "<API_TITLE>",
        "schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json"
    },
    "item": [
<STRUCTURE_LOOP>
        {
            "_postman_id": "<guid_nobrace>",
            "name": "<StructureNoplural> Tests",
            "item": [
                {
                    "_postman_id": "<guid_nobrace>",
                    "name": "Read <structurePlural>",
                    "request": {
                        "method": "GET",
                        "header": [
                            {
                                "key": "Accept",
                                "value": "application/json"
                            }
                        ],
                        "body": {
                            "mode": "raw",
                            "raw": ""
                        },
                        "url": {
                            "raw": "<SERVER_PROTOCOL>://<SERVER_NAME>:<SERVER_HTTPS_PORT><SERVER_BASE_PATH>/<StructurePlural>",
                            "protocol": "<SERVER_PROTOCOL>",
                            "host": [
                                "<SERVER_NAME>"
                            ],
                            "port": "<SERVER_HTTPS_PORT>",
                            "path": [
                                "odata",
                                "<StructurePlural>"
                            ]
                        }
                    },
                    "response": []
                },
      <IF DEFINED_ENABLE_COUNT>
                {
                    "_postman_id": "<guid_nobrace>",
                    "name": "Count <structurePlural>",
                    "request": {
                        "method": "GET",
                        "header": [
                            {
                                "key": "Accept",
                                "value": "application/json"
                            }
                        ],
                        "body": {
                            "mode": "raw",
                            "raw": ""
                        },
                        "url": {
                            "raw": "<SERVER_PROTOCOL>://<SERVER_NAME>:<SERVER_HTTPS_PORT><SERVER_BASE_PATH>/<StructurePlural>/$count",
                            "protocol": "<SERVER_PROTOCOL>",
                            "host": [
                                "<SERVER_NAME>"
                            ],
                            "port": "<SERVER_HTTPS_PORT>",
                            "path": [
                                "odata",
                                "<StructurePlural>",
                                "$count"
                            ]
                        }
                    },
                    "response": []
                },
      </IF DEFINED_ENABLE_COUNT>
                {
                    "_postman_id": "<guid_nobrace>",
                    "name": "Read <structureNoplural>",
                    "request": {
                    "method": "GET",
                    "header": [
                        {
                        "key": "Accept",
                        "value": "application/json"
                        }
                    ],
                    "body": {
                        "mode": "raw",
                        "raw": ""
                    },
                    "url": {
                        "raw": "<SERVER_PROTOCOL>://<SERVER_NAME>:<SERVER_HTTPS_PORT><SERVER_BASE_PATH>/<StructurePlural>(<IF STRUCTURE_ISAM><PRIMARY_KEY><SEGMENT_LOOP><IF SEG_ALPHA>'</IF SEG_ALPHA>Insert<SegmentName><IF SEG_ALPHA>'</IF SEG_ALPHA><,></SEGMENT_LOOP></PRIMARY_KEY></IF STRUCTURE_ISAM><IF STRUCTURE_RELATIVE>InsertRecordNumber</IF STRUCTURE_RELATIVE>)",
                        "protocol": "<SERVER_PROTOCOL>",
                        "host": [
                            "<SERVER_NAME>"
                        ],
                        "port": "<SERVER_HTTPS_PORT>",
                        "path": [
                            "odata",
                            "<StructurePlural>(<IF STRUCTURE_ISAM><PRIMARY_KEY><SEGMENT_LOOP><IF SEG_ALPHA>'</IF SEG_ALPHA>Insert<SegmentName><IF SEG_ALPHA>'</IF SEG_ALPHA><,></SEGMENT_LOOP></PRIMARY_KEY></IF STRUCTURE_ISAM><IF STRUCTURE_RELATIVE>InsertRecordNumber</IF STRUCTURE_RELATIVE>)"
                        ]
                    }
                    },
                    "response": []
                },
<IF STRUCTURE_ISAM>
  <IF DEFINED_ENABLE_ALTERNATE_KEYS>
    <ALTERNATE_KEY_LOOP>
                {
                    "_postman_id": "<guid_nobrace>",
        <IF DUPLICATES>
                    "name": "Read <structurePlural> by <KeyName>",
        <ELSE>
                    "name": "Read <structureNoplural> by <KeyName>",
        </IF DUPLICATES>
                    "request": {
                    "method": "GET",
                    "header": [
                        {
                        "key": "Accept",
                        "value": "application/json"
                        }
                    ],
                    "body": {
                        "mode": "raw",
                        "raw": ""
                    },
                    "url": {
                        "raw": "<SERVER_PROTOCOL>://<SERVER_NAME>:<SERVER_HTTPS_PORT><SERVER_BASE_PATH>/<StructurePlural>(<SEGMENT_LOOP><SegmentName>=<IF SEG_ALPHA>'</IF SEG_ALPHA>Insert<SegmentName><IF SEG_ALPHA>'</IF SEG_ALPHA><,></SEGMENT_LOOP>)",
                        "protocol": "<SERVER_PROTOCOL>",
                        "host": [
                            "<SERVER_NAME>"
                        ],
                        "port": "<SERVER_HTTPS_PORT>",
                        "path": [
                            "odata",
                            "<StructurePlural>(<SEGMENT_LOOP><SegmentName>=<IF SEG_ALPHA>'</IF SEG_ALPHA>Insert<SegmentName><IF SEG_ALPHA>'</IF SEG_ALPHA><,></SEGMENT_LOOP>)"
                        ]
                    }
                    },
                    "response": []
                },
      <IF DEFINED_ENABLE_COUNT>
        <IF DUPLICATES>
                {
                    "_postman_id": "<guid_nobrace>",
                    "name": "Count <structurePlural> by <KeyName>",
                    "request": {
                    "method": "GET",
                    "header": [
                        {
                        "key": "Accept",
                        "value": "application/json"
                        }
                    ],
                    "body": {
                        "mode": "raw",
                        "raw": ""
                    },
                    "url": {
                        "raw": "<SERVER_PROTOCOL>://<SERVER_NAME>:<SERVER_HTTPS_PORT><SERVER_BASE_PATH>/<StructurePlural>(<SEGMENT_LOOP><SegmentName>=<IF SEG_ALPHA>'</IF SEG_ALPHA>Insert<SegmentName><IF SEG_ALPHA>'</IF SEG_ALPHA><,></SEGMENT_LOOP>)/$count",
                        "protocol": "<SERVER_PROTOCOL>",
                        "host": [
                            "<SERVER_NAME>"
                        ],
                        "port": "<SERVER_HTTPS_PORT>",
                        "path": [
                            "odata",
                            "<StructurePlural>(<SEGMENT_LOOP><SegmentName>=<IF SEG_ALPHA>'</IF SEG_ALPHA>Insert<SegmentName><IF SEG_ALPHA>'</IF SEG_ALPHA><,></SEGMENT_LOOP>)",
                            "$count"
                        ]
                    }
                    },
                    "response": []
                },
        </IF DUPLICATES>
      </IF DEFINED_ENABLE_COUNT>
    </ALTERNATE_KEY_LOOP>
  </IF DEFINED_ENABLE_ALTERNATE_KEYS>
</IF STRUCTURE_ISAM>
<IF DEFINED_ENABLE_PROPERTY_ENDPOINTS>
  <FIELD_LOOP>
    <IF NOTPKSEGMENT>
      <IF CUSTOM_NOT_HARMONY_EXCLUDE>
                {
                    "_postman_id": "<guid_nobrace>",
                    "name": "Read <structureNoplural> <fieldSqlName>",
                    "request": {
                    "method": "GET",
                    "header": [
                        {
                        "key": "Accept",
                        "value": "application/json"
                        }
                    ],
                    "body": {
                        "mode": "raw",
                        "raw": ""
                    },
                    "url": {
                        "raw": "<SERVER_PROTOCOL>://<SERVER_NAME>:<SERVER_HTTPS_PORT><SERVER_BASE_PATH>/<StructurePlural>(<IF STRUCTURE_ISAM><PRIMARY_KEY><SEGMENT_LOOP><IF SEG_ALPHA>'</IF SEG_ALPHA>Insert<SegmentName><IF SEG_ALPHA>'</IF SEG_ALPHA><,></SEGMENT_LOOP></PRIMARY_KEY></IF STRUCTURE_ISAM><IF STRUCTURE_RELATIVE>InsertRecordNumber</IF STRUCTURE_RELATIVE>)/<FieldSqlName>",
                        "protocol": "<SERVER_PROTOCOL>",
                        "host": [
                            "<SERVER_NAME>"
                        ],
                        "port": "<SERVER_HTTPS_PORT>",
                        "path": [
                            "odata",
                            "<StructurePlural>(<IF STRUCTURE_ISAM><PRIMARY_KEY><SEGMENT_LOOP><IF SEG_ALPHA>'</IF SEG_ALPHA>Insert<SegmentName><IF SEG_ALPHA>'</IF SEG_ALPHA><,></SEGMENT_LOOP></PRIMARY_KEY></IF STRUCTURE_ISAM><IF STRUCTURE_RELATIVE>InsertRecordNumber</IF STRUCTURE_RELATIVE>)/<FieldSqlName>"
                        ]
                    }
                    },
                    "response": []
                },
                {
                    "_postman_id": "<guid_nobrace>",
                    "name": "Read <structureNoplural> <fieldSqlName> raw value",
                    "request": {
                    "method": "GET",
                    "header": [
                        {
                        "key": "Accept",
                        "value": "application/json"
                        }
                    ],
                    "body": {
                        "mode": "raw",
                        "raw": ""
                    },
                    "url": {
                        "raw": "<SERVER_PROTOCOL>://<SERVER_NAME>:<SERVER_HTTPS_PORT><SERVER_BASE_PATH>/<StructurePlural>(<IF STRUCTURE_ISAM><PRIMARY_KEY><SEGMENT_LOOP><IF SEG_ALPHA>'</IF SEG_ALPHA>Insert<SegmentName><IF SEG_ALPHA>'</IF SEG_ALPHA><,></SEGMENT_LOOP></PRIMARY_KEY></IF STRUCTURE_ISAM><IF STRUCTURE_RELATIVE>InsertRecordNumber</IF STRUCTURE_RELATIVE>)/<FieldSqlName>/$value",
                        "protocol": "<SERVER_PROTOCOL>",
                        "host": [
                            "<SERVER_NAME>"
                        ],
                        "port": "<SERVER_HTTPS_PORT>",
                        "path": [
                            "odata",
                            "<StructurePlural>(<IF STRUCTURE_ISAM><PRIMARY_KEY><SEGMENT_LOOP><IF SEG_ALPHA>'</IF SEG_ALPHA>Insert<SegmentName><IF SEG_ALPHA>'</IF SEG_ALPHA><,></SEGMENT_LOOP></PRIMARY_KEY></IF STRUCTURE_ISAM><IF STRUCTURE_RELATIVE>InsertRecordNumber</IF STRUCTURE_RELATIVE>)/<FieldSqlName>/$value"
                        ]
                    }
                    },
                    "response": []
                },
      </IF CUSTOM_NOT_HARMONY_EXCLUDE>
    </IF NOTPKSEGMENT>
  </FIELD_LOOP>
</IF DEFINED_ENABLE_PROPERTY_ENDPOINTS>
                {
                    "_postman_id": "<guid_nobrace>",
                    "name": "Create <structureNoplural> (auto assign key)",
                    "request": {
                    "method": "POST",
                    "header": [
                        {
                        "key": "Content-Type",
                        "value": "application/json"
                        }
                    ],
                    "body": {
                        "mode": "raw",
                         "raw": "{\n<FIELD_LOOP><IF CUSTOM_NOT_HARMONY_EXCLUDE>    \"<FieldSqlName>\": <IF ALPHA>\"</IF ALPHA><IF CUSTOM_HARMONY_AS_STRING>\"</IF CUSTOM_HARMONY_AS_STRING><FIELD_SAMPLE_DATA_NOQUOTES><IF CUSTOM_HARMONY_AS_STRING>\"</IF CUSTOM_HARMONY_AS_STRING><IF ALPHA>\"</IF ALPHA><,>\n</IF CUSTOM_NOT_HARMONY_EXCLUDE></FIELD_LOOP>}"
                    },
                    "url": {
                        "raw": "<SERVER_PROTOCOL>://<SERVER_NAME>:<SERVER_HTTPS_PORT><SERVER_BASE_PATH>/<StructurePlural>",
                        "protocol": "<SERVER_PROTOCOL>",
                        "host": [
                            "<SERVER_NAME>"
                        ],
                        "port": "<SERVER_HTTPS_PORT>",
                        "path": [
                            "odata",
                            "<StructurePlural>"
                        ]
                    }
                    },
                    "response": []
                },
                {
                    "_postman_id": "<guid_nobrace>",
                    "name": "Create or update <structureNoplural>",
                    "request": {
                    "method": "PUT",
                    "header": [
                        {
                        "key": "Content-Type",
                        "value": "application/json"
                        }
                    ],
                    "body": {
                        "mode": "raw",
                         "raw": "{\n<FIELD_LOOP><IF CUSTOM_NOT_HARMONY_EXCLUDE>    \"<FieldSqlName>\": <IF ALPHA>\"</IF ALPHA><IF CUSTOM_HARMONY_AS_STRING>\"</IF CUSTOM_HARMONY_AS_STRING><FIELD_SAMPLE_DATA_NOQUOTES><IF CUSTOM_HARMONY_AS_STRING>\"</IF CUSTOM_HARMONY_AS_STRING><IF ALPHA>\"</IF ALPHA><,>\n</IF CUSTOM_NOT_HARMONY_EXCLUDE></FIELD_LOOP>}"
                    },
                    "url": {
                        "raw": "<SERVER_PROTOCOL>://<SERVER_NAME>:<SERVER_HTTPS_PORT><SERVER_BASE_PATH>/<StructurePlural>(<IF STRUCTURE_ISAM><PRIMARY_KEY><SEGMENT_LOOP><IF SEG_ALPHA>'</IF SEG_ALPHA>Insert<SegmentName><IF SEG_ALPHA>'</IF SEG_ALPHA><,></SEGMENT_LOOP></PRIMARY_KEY></IF STRUCTURE_ISAM><IF STRUCTURE_RELATIVE>InsertRecordNumber</IF STRUCTURE_RELATIVE>)",
                        "protocol": "<SERVER_PROTOCOL>",
                        "host": [
                            "<SERVER_NAME>"
                        ],
                        "port": "<SERVER_HTTPS_PORT>",
                        "path": [
                            "odata",
                            "<StructurePlural>(<IF STRUCTURE_ISAM><PRIMARY_KEY><SEGMENT_LOOP><IF SEG_ALPHA>'</IF SEG_ALPHA>Insert<SegmentName><IF SEG_ALPHA>'</IF SEG_ALPHA><,></SEGMENT_LOOP></PRIMARY_KEY></IF STRUCTURE_ISAM><IF STRUCTURE_RELATIVE>InsertRecordNumber</IF STRUCTURE_RELATIVE>)"
                        ]
                    }
                    },
                    "response": []
                },
                {
                    "name": "Patch <structureNoplural>",
                    "request": {
                        "method": "PATCH",
                        "header": [
                            {
                                "key": "Content-Type",
                                "value": "application/json"
                            }
                        ],
                        "body": {
                            "mode": "raw",
                            "raw": "[\r\n  {\r\n    \"op\": \"replace\",\r\n    \"path\": \"PropertyName\",\r\n    \"value\": \"PropertyValue\"\r\n  }\r\n]"
                        },
                    "url": {
                        "raw": "<SERVER_PROTOCOL>://<SERVER_NAME>:<SERVER_HTTPS_PORT><SERVER_BASE_PATH>/<StructurePlural>(<IF STRUCTURE_ISAM><PRIMARY_KEY><SEGMENT_LOOP><IF SEG_ALPHA>'</IF SEG_ALPHA>Insert<SegmentName><IF SEG_ALPHA>'</IF SEG_ALPHA><,></SEGMENT_LOOP></PRIMARY_KEY></IF STRUCTURE_ISAM><IF STRUCTURE_RELATIVE>InsertRecordNumber</IF STRUCTURE_RELATIVE>)",
                        "protocol": "<SERVER_PROTOCOL>",
                        "host": [
                            "<SERVER_NAME>"
                        ],
                        "port": "<SERVER_HTTPS_PORT>",
                        "path": [
                            "odata",
                            "<StructurePlural>(<IF STRUCTURE_ISAM><PRIMARY_KEY><SEGMENT_LOOP><IF SEG_ALPHA>'</IF SEG_ALPHA>Insert<SegmentName><IF SEG_ALPHA>'</IF SEG_ALPHA><,></SEGMENT_LOOP></PRIMARY_KEY></IF STRUCTURE_ISAM><IF STRUCTURE_RELATIVE>InsertRecordNumber</IF STRUCTURE_RELATIVE>)"
                        ]
                    }
                    },
                    "response": []
                },
                {
                    "_postman_id": "<guid_nobrace>",
                    "name": "Delete <structureNoplural>",
                    "request": {
                    "method": "DELETE",
                    "header": [
                        {
                        "key": "Accept",
                        "value": "application/json"
                        }
                    ],
                    "body": {
                        "mode": "raw",
                        "raw": ""
                    },
                    "url": {
                        "raw": "<SERVER_PROTOCOL>://<SERVER_NAME>:<SERVER_HTTPS_PORT><SERVER_BASE_PATH>/<StructurePlural>(<IF STRUCTURE_ISAM><PRIMARY_KEY><SEGMENT_LOOP><IF SEG_ALPHA>'</IF SEG_ALPHA>Insert<SegmentName><IF SEG_ALPHA>'</IF SEG_ALPHA><,></SEGMENT_LOOP></PRIMARY_KEY></IF STRUCTURE_ISAM><IF STRUCTURE_RELATIVE>InsertRecordNumber</IF STRUCTURE_RELATIVE>)",
                        "protocol": "<SERVER_PROTOCOL>",
                        "host": [
                            "<SERVER_NAME>"
                        ],
                        "port": "<SERVER_HTTPS_PORT>",
                        "path": [
                            "odata",
                            "<StructurePlural>(<IF STRUCTURE_ISAM><PRIMARY_KEY><SEGMENT_LOOP><IF SEG_ALPHA>'</IF SEG_ALPHA>Insert<SegmentName><IF SEG_ALPHA>'</IF SEG_ALPHA><,></SEGMENT_LOOP></PRIMARY_KEY></IF STRUCTURE_ISAM><IF STRUCTURE_RELATIVE>InsertRecordNumber</IF STRUCTURE_RELATIVE>)"
                        ]
                    }
                    },
                    "response": []
                }
            ]
        }<,>
</STRUCTURE_LOOP>
    ],
    "event": [
        {
            "listen": "prerequest",
            "script": {
                "id": "<guid_nobrace>",
                "type": "text/javascript",
                "exec": [
                    ""
                ]
            }
        },
        {
            "listen": "test",
            "script": {
                "id": "<guid_nobrace>",
                "type": "text/javascript",
                "exec": [
                    ""
                ]
            }
        }
    ]
}