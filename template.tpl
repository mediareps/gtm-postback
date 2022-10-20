___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Traffichaus Postback Code",
  "brand": {
    "id": "brand_dummy",
    "displayName": ""
  },
  "description": "This is our Traffichaus Postback Code. Simple setup process.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "pid",
    "displayName": "Pid",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "value",
    "displayName": "Value",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
const queryPermission = require('queryPermission');
const sendPixel = require('sendPixel');
const encodeUriComponent = require('encodeUriComponent');

const pid = data.pid;
const myval = data.value;
const url = 'https://syndication.traffichaus.com/adserve/postback.php?pid='+encodeUriComponent(pid)+'&value='+encodeUriComponent(myval);

if (queryPermission('send_pixel', url)) {
  sendPixel(url);
}

data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "send_pixel",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedUrls",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://admin.traffichaus.com/"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 10/20/2022, 2:20:29 PM


