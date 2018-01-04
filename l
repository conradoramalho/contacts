[33mcommit 4ebe59d16deccd201de67fb914204b83320d5559[m
Author: Conrado Ramalho <conrado.ramalho94@gmail.com>
Date:   Tue Jan 2 23:12:36 2018 -0200

    Development of remove and filter functions

[1mdiff --git a/package-lock.json b/package-lock.json[m
[1mindex 3dd9eea..5b7f1cd 100644[m
[1m--- a/package-lock.json[m
[1m+++ b/package-lock.json[m
[36m@@ -7,26 +7,30 @@[m
     "abab": {[m
       "version": "1.0.4",[m
       "resolved": "https://registry.npmjs.org/abab/-/abab-1.0.4.tgz",[m
[31m-      "integrity": "sha1-X6rZwsB/YN12dw9xzwJbYqY8/U4="[m
[32m+[m[32m      "integrity": "sha1-X6rZwsB/YN12dw9xzwJbYqY8/U4=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "accepts": {[m
       "version": "1.3.4",[m
       "resolved": "https://registry.npmjs.org/accepts/-/accepts-1.3.4.tgz",[m
       "integrity": "sha1-hiRnWMfdbSGmR0/whKR0DsBesh8=",[m
[32m+[m[32m      "dev": true,[m
       "requires": {[m
         "mime-types": "2.1.17",[m
         "negotiator": "0.6.1"[m
       }[m
     },[m
     "acorn": {[m
[31m-      "version": "5.2.1",[m
[31m-      "resolved": "https://registry.npmjs.org/acorn/-/acorn-5.2.1.tgz",[m
[31m-      "integrity": "sha512-jG0u7c4Ly+3QkkW18V+NRDN+4bWHdln30NL1ZL2AvFZZmQe/BfopYCtghCKKVBUSetZ4QKcyA0pY6/4Gw8Pv8w=="[m
[32m+[m[32m      "version": "5.3.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/acorn/-/acorn-5.3.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-Yej+zOJ1Dm/IMZzzj78OntP/r3zHEaKcyNoU2lAaxPtrseM6rF0xwqoz5Q5ysAiED9hTjI2hgtvLXitlCN1/Ug==",[m
[32m+[m[32m      "dev": true[m
     },[m
     "acorn-dynamic-import": {[m
       "version": "2.0.2",[m
       "resolved": "https://registry.npmjs.org/acorn-dynamic-import/-/acorn-dynamic-import-2.0.2.tgz",[m
       "integrity": "sha1-x1K9IQvvZ5UBtsbLf8hPj0cVjMQ=",[m
[32m+[m[32m      "dev": true,[m
       "requires": {[m
         "acorn": "4.0.13"[m
       },[m
[36m@@ -34,7 +38,8 @@[m
         "acorn": {[m
           "version": "4.0.13",[m
           "resolved": "https://registry.npmjs.org/acorn/-/acorn-4.0.13.tgz",[m
[31m-          "integrity": "sha1-EFSVrlNh1pe9GVyCUZLhrX8lN4c="[m
[32m+[m[32m          "integrity": "sha1-EFSVrlNh1pe9GVyCUZLhrX8lN4c=",[m
[32m+[m[32m          "dev": true[m
         }[m
       }[m
     },[m
[36m@@ -42,6 +47,7 @@[m
       "version": "3.1.0",[m
       "resolved": "https://registry.npmjs.org/acorn-globals/-/acorn-globals-3.1.0.tgz",[m
       "integrity": "sha1-/YJw9x+7SZawBPqIDuXUZXOnMb8=",[m
[32m+[m[32m      "dev": true,[m
       "requires": {[m
         "acorn": "4.0.13"[m
       },[m
[36m@@ -49,7 +55,8 @@[m
         "acorn": {[m
           "version": "4.0.13",[m
           "resolved": "https://registry.npmjs.org/acorn/-/acorn-4.0.13.tgz",[m
[31m-          "integrity": "sha1-EFSVrlNh1pe9GVyCUZLhrX8lN4c="[m
[32m+[m[32m          "integrity": "sha1-EFSVrlNh1pe9GVyCUZLhrX8lN4c=",[m
[32m+[m[32m          "dev": true[m
         }[m
       }[m
     },[m
[36m@@ -57,6 +64,7 @@[m
       "version": "3.0.1",[m
       "resolved": "https://registry.npmjs.org/acorn-jsx/-/acorn-jsx-3.0.1.tgz",[m
       "integrity": "sha1-r9+UiPsezvyDSPb7IvRk4ypYs2s=",[m
[32m+[m[32m      "dev": true,[m
       "requires": {[m
         "acorn": "3.3.0"[m
       },[m
[36m@@ -64,35 +72,38 @@[m
         "acorn": {[m
           "version": "3.3.0",[m
           "resolved": "https://registry.npmjs.org/acorn/-/acorn-3.3.0.tgz",[m
[31m-          "integrity": "sha1-ReN/s56No/JbruP/U2niu18iAXo="[m
[32m+[m[32m          "integrity": "sha1-ReN/s56No/JbruP/U2niu18iAXo=",[m
[32m+[m[32m          "dev": true[m
         }[m
       }[m
     },[m
     "address": {[m
[31m-      "version": "1.0.3",[m
[31m-      "resolved": "https://registry.npmjs.org/address/-/address-1.0.3.tgz",[m
[31m-      "integrity": "sha512-z55ocwKBRLryBs394Sm3ushTtBeg6VAeuku7utSoSnsJKvKcnXFIyC6vh27n3rXyxSgkJBBCAvyOn7gSUcTYjg=="[m
[32m+[m[32m      "version": "1.0.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/address/-/address-1.0.2.tgz",[m
[32m+[m[32m      "integrity": "sha1-SACB6CtYe6MZRZ/vUS9Rb+A9WK8=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "ajv": {[m
[31m-      "version": "5.5.1",[m
[31m-      "resolved": "https://registry.npmjs.org/ajv/-/ajv-5.5.1.tgz",[m
[31m-      "integrity": "sha1-s4u4h22ehr7plJVqBOch6IskjrI=",[m
[32m+[m[32m      "version": "4.11.8",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/ajv/-/ajv-4.11.8.tgz",[m
[32m+[m[32m      "integrity": "sha1-gv+wKynmYq5TvcIK8VlHcGc5xTY=",[m
[32m+[m[32m      "dev": true,[m
       "requires": {[m
         "co": "4.6.0",[m
[31m-        "fast-deep-equal": "1.0.0",[m
[31m-        "fast-json-stable-stringify": "2.0.0",[m
[31m-        "json-schema-traverse": "0.3.1"[m
[32m+[m[32m        "json-stable-stringify": "1.0.1"[m
       }[m
     },[m
     "ajv-keywords": {[m
[31m-      "version": "2.1.1",[m
[31m-      "resolved": "https://registry.npmjs.org/ajv-keywords/-/ajv-keywords-2.1.1.tgz",[m
[31m-      "integrity": "sha1-YXmX/F9gV2iUxDX5QNgZ4TW4B2I="[m
[32m+[m[32m      "version": "1.5.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/ajv-keywords/-/ajv-keywords-1.5.1.tgz",[m
[32m+[m[32m      "integrity": "sha1-MU3QpLM2j609/NxU7eYXG4htrzw=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "align-text": {[m
       "version": "0.1.4",[m
       "resolved": "https://registry.npmjs.org/align-text/-/align-text-0.1.4.tgz",[m
       "integrity": "sha1-DNkKVhCT810KmSVsIrcGlDP60Rc=",[m
[32m+[m[32m      "dev": true,[m
       "requires": {[m
         "kind-of": "3.2.2",[m
         "longest": "1.0.1",[m
[36m@@ -102,60 +113,53 @@[m
     "alphanum-sort": {[m
       "version": "1.0.2",[m
       "resolved": "https://registry.npmjs.org/alphanum-sort/-/alphanum-sort-1.0.2.tgz",[m
[31m-      "integrity": "sha1-l6ERlkmyEa0zaR2fn0hqjsn74KM="[m
[32m+[m[32m      "integrity": "sha1-l6ERlkmyEa0zaR2fn0hqjsn74KM=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "amdefine": {[m
       "version": "1.0.1",[m
       "resolved": "https://registry.npmjs.org/amdefine/-/amdefine-1.0.1.tgz",[m
[31m-      "integrity": "sha1-SlKCrBZHKek2Gbz9OtFR+BfOkfU="[m
[32m+[m[32m      "integrity": "sha1-SlKCrBZHKek2Gbz9OtFR+BfOkfU=",[m
[32m+[m[32m      "dev": true[m
[32m+[m[32m    },[m
[32m+[m[32m    "anser": {[m
[32m+[m[32m      "version": "1.4.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/anser/-/anser-1.4.1.tgz",[m
[32m+[m[32m      "integrity": "sha1-w2QYY6lizr75Qeoshwbyy08HFr0=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "ansi-align": {[m
       "version": "1.1.0",[m
       "resolved": "https://registry.npmjs.org/ansi-align/-/ansi-align-1.1.0.tgz",[m
       "integrity": "sha1-LwwWWIKXOa3V67FeawxuNCPwFro=",[m
[32m+[m[32m      "dev": true,[m
       "requires": {[m
         "string-width": "1.0.2"[m
[31m-      },[m
[31m-      "dependencies": {[m
[31m-        "is-fullwidth-code-point": {[m
[31m-          "version": "1.0.0",[m
[31m-          "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz",[m
[31m-          "integrity": "sha1-754xOG8DGn8NZDr4L95QxFfvAMs=",[m
[31m-          "requires": {[m
[31m-            "number-is-nan": "1.0.1"[m
[31m-          }[m
[31m-        },[m
[31m-        "string-width": {[m
[31m-          "version": "1.0.2",[m
[31m-          "resolved": "https://registry.npmjs.org/string-width/-/string-width-1.0.2.tgz",[m
[31m-          "integrity": "sha1-EYvfW4zcUaKn5w0hHgfisLmxB9M=",[m
[31m-          "requires": {[m
[31m-            "code-point-at": "1.1.0",[m
[31m-            "is-fullwidth-code-point": "1.0.0",[m
[31m-            "strip-ansi": "3.0.1"[m
[31m-          }[m
[31m-        }[m
       }[m
     },[m
     "ansi-escapes": {[m
[31m-      "version": "3.0.0",[m
[31m-      "resolved": "https://registry.npmjs.org/ansi-escapes/-/ansi-escapes-3.0.0.tgz",[m
[31m-      "integrity": "sha512-O/klc27mWNUigtv0F8NJWbLF00OcegQalkqKURWdosW08YZKi4m6CnSUSvIZG1otNJbTWhN01Hhz389DW7mvDQ=="[m
[32m+[m[32m      "version": "1.4.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/ansi-escapes/-/ansi-escapes-1.4.0.tgz",[m
[32m+[m[32m      "integrity": "sha1-06ioOzGapneTZisT52HHkRQiMG4=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "ansi-html": {[m
       "version": "0.0.7",[m
       "resolved": "https://registry.npmjs.org/ansi-html/-/ansi-html-0.0.7.tgz",[m
[31m-      "integrity": "sha1-gTWEAhliqenm/QOflA0S9WynhZ4="[m
[32m+[m[32m      "integrity": "sha1-gTWEAhliqenm/QOflA0S9WynhZ4=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "ansi-regex": {[m
       "version": "2.1.1",[m
       "resolved": "https://registry.npmjs.org/ansi-regex/-/ansi-regex-2.1.1.tgz",[m
[31m-      "integrity": "sha1-w7M6te42DYbg5ijwRorn7yfWVN8="[m
[32m+[m[32m      "integrity": "sha1-w7M6te42DYbg5ijwRorn7yfWVN8=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "ansi-styles": {[m
       "version": "3.2.0",[m
       "resolved": "https://registry.npmjs.org/ansi-styles/-/ansi-styles-3.2.0.tgz",[m
       "integrity": "sha512-NnSOmMEYtVR2JVMIGTzynRkkaxtiq1xnFBcdQD/DnNCYPoEPsVJhM98BDyaoNOQIi7p4okdi3E27eN7GQbsUug==",[m
[32m+[m[32m      "dev": true,[m
       "requires": {[m
         "color-convert": "1.9.1"[m
       }[m
[36m@@ -164,6 +168,7 @@[m
       "version": "1.3.2",[m
       "resolved": "https://registry.npmjs.org/anymatch/-/anymatch-1.3.2.tgz",[m
       "integrity": "sha512-0XNayC8lTHQ2OI8aljNCN3sSx6hsr/1+rlcDAotXJR7C1oZZHCNsfpbKwMjRA3Uqb5tF1Rae2oloTr4xpq+WjA==",[m
[32m+[m[32m      "dev": true,[m
       "requires": {[m
         "micromatch": "2.3.11",[m
         "normalize-path": "2.1.1"[m
[36m@@ -173,6 +178,7 @@[m
       "version": "0.4.0",[m
       "resolved": "https://registry.npmjs.org/append-transform/-/append-transform-0.4.0.tgz",[m
       "integrity": "sha1-126/jKlNJ24keja61EpLdKthGZE=",[m
[32m+[m[32m      "dev": true,[m
       "requires": {[m
         "default-require-extensions": "1.0.0"[m
       }[m
[36m@@ -181,14 +187,16 @@[m
       "version": "1.0.9",[m
       "resolved": "https://registry.npmjs.org/argparse/-/argparse-1.0.9.tgz",[m
       "integrity": "sha1-c9g7wmP4bpf4zE9rrhsOkKfSLIY=",[m
[32m+[m[32m      "dev": true,[m
       "requires": {[m
         "sprintf-js": "1.0.3"[m
       }[m
     },[m
     "aria-query": {[m
[31m-      "version": "0.7.0",[m
[31m-      "resolved": "https://registry.npmjs.org/aria-query/-/aria-query-0.7.0.tgz",[m
[31m-      "integrity": "sha512-/r2lHl09V3o74+2MLKEdewoj37YZqiQZnfen1O4iNlrOjUgeKuu1U2yF3iKh6HJxqF+OXkLMfQv65Z/cvxD6vA==",[m
[32m+[m[32m      "version": "0.5.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/aria-query/-/aria-query-0.5.0.tgz",[m
[32m+[m[32m      "integrity": "sha1-heMVLNjMW6sY2+1hzZxPzlT6ecM=",[m
[32m+[m[32m      "dev": true,[m
       "requires": {[m
         "ast-types-flow": "0.0.7"[m
       }[m
[36m@@ -197,6 +205,7 @@[m
       "version": "2.0.0",[m
       "resolved": "https://registry.npmjs.org/arr-diff/-/arr-diff-2.0.0.tgz",[m
       "integrity": "sha1-jzuCf5Vai9ZpaX5KQlasPOrjVs8=",[m
[32m+[m[32m      "dev": true,[m
       "requires": {[m
         "arr-flatten": "1.1.0"[m
       }[m
[36m@@ -204,32 +213,38 @@[m
     "arr-flatten": {[m
       "version": "1.1.0",[m
       "resolved": "https://registry.npmjs.org/arr-flatten/-/arr-flatten-1.1.0.tgz",[m
[31m-      "integrity": "sha512-L3hKV5R/p5o81R7O02IGnwpDmkp6E982XhtbuwSe3O4qOtMMMtodicASA1Cny2U+aCXcNpml+m4dPsvsJ3jatg=="[m
[32m+[m[32m      "integrity": "sha512-L3hKV5R/p5o81R7O02IGnwpDmkp6E982XhtbuwSe3O4qOtMMMtodicASA1Cny2U+aCXcNpml+m4dPsvsJ3jatg==",[m
[32m+[m[32m      "dev": true[m
     },[m
     "array-equal": {[m
       "version": "1.0.0",[m
       "resolved": "https://registry.npmjs.org/array-equal/-/array-equal-1.0.0.tgz",[m
[31m-      "integrity": "sha1-jCpe8kcv2ep0KwTHenUJO6J1fJM="[m
[32m+[m[32m      "integrity": "sha1-jCpe8kcv2ep0KwTHenUJO6J1fJM=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "array-filter": {[m
       "version": "0.0.1",[m
       "resolved": "https://registry.npmjs.org/array-filter/-/array-filter-0.0.1.tgz",[m
[31m-      "integrity": "sha1-fajPLiZijtcygDWB/SH2fKzS7uw="[m
[32m+[m[32m      "integrity": "sha1-fajPLiZijtcygDWB/SH2fKzS7uw=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "array-find-index": {[m
       "version": "1.0.2",[m
       "resolved": "https://registry.npmjs.org/array-find-index/-/array-find-index-1.0.2.tgz",[m
[31m-      "integrity": "sha1-3wEKoSh+Fku9pvlyOwqWoexBh6E="[m
[32m+[m[32m      "integrity": "sha1-3wEKoSh+Fku9pvlyOwqWoexBh6E=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "array-flatten": {[m
[31m-      "version": "2.1.1",[m
[31m-      "resolved": "https://registry.npmjs.org/array-flatten/-/array-flatten-2.1.1.tgz",[m
[31m-      "integrity": "sha1-Qmu52oQJDBg42BLIFQryCoMx4pY="[m
[32m+[m[32m      "version": "1.1.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/array-flatten/-/array-flatten-1.1.1.tgz",[m
[32m+[m[32m      "integrity": "sha1-ml9pkFGx5wczKPKgCJaLZOopVdI=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "array-includes": {[m
       "version": "3.0.3",[m
       "resolved": "https://registry.npmjs.org/array-includes/-/array-includes-3.0.3.tgz",[m
       "integrity": "sha1-GEtI9i2S10UrsxsyMWXH+L0CJm0=",[m
[32m+[m[32m      "dev": true,[m
       "requires": {[m
         "define-properties": "1.1.2",[m
         "es-abstract": "1.10.0"[m
[36m@@ -238,17 +253,20 @@[m
     "array-map": {[m
       "version": "0.0.0",[m
       "resolved": "https://registry.npmjs.org/array-map/-/array-map-0.0.0.tgz",[m
[31m-      "integrity": "sha1-iKK6tz0c97zVwbEYoAP2b2ZfpmI="[m
[32m+[m[32m      "integrity": "sha1-iKK6tz0c97zVwbEYoAP2b2ZfpmI=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "array-reduce": {[m
       "version": "0.0.0",[m
       "resolved": "https://registry.npmjs.org/array-reduce/-/array-reduce-0.0.0.tgz",[m
[31m-      "integrity": "sha1-FziZ0//Rx9k4PkR5Ul2+J4yrXys="[m
[32m+[m[32m      "integrity": "sha1-FziZ0//Rx9k4PkR5Ul2+J4yrXys=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "array-union": {[m
       "version": "1.0.2",[m
       "resolved": "https://registry.npmjs.org/array-union/-/array-union-1.0.2.tgz",[m
       "integrity": "sha1-mjRBDk9OPaI96jdb5b5w8kd47Dk=",[m
[32m+[m[32m      "dev": true,[m
       "requires": {[m
         "array-uniq": "1.0.3"[m
       }[m
[36m@@ -256,17 +274,20 @@[m
     "array-uniq": {[m
       "version": "1.0.3",[m
       "resolved": "https://registry.npmjs.org/array-uniq/-/array-uniq-1.0.3.tgz",[m
[31m-      "integrity": "sha1-r2rId6Jcx/dOBYiUdThY39sk/bY="[m
[32m+[m[32m      "integrity": "sha1-r2rId6Jcx/dOBYiUdThY39sk/bY=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "array-unique": {[m
       "version": "0.2.1",[m
       "resolved": "https://registry.npmjs.org/array-unique/-/array-unique-0.2.1.tgz",[m
[31m-      "integrity": "sha1-odl8yvy8JiXMcPrc6zalDFiwGlM="[m
[32m+[m[32m      "integrity": "sha1-odl8yvy8JiXMcPrc6zalDFiwGlM=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "arrify": {[m
       "version": "1.0.1",[m
       "resolved": "https://registry.npmjs.org/arrify/-/arrify-1.0.1.tgz",[m
[31m-      "integrity": "sha1-iYUI2iIm84DfkEcoRWhJwVAaSw0="[m
[32m+[m[32m      "integrity": "sha1-iYUI2iIm84DfkEcoRWhJwVAaSw0=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "asap": {[m
       "version": "2.0.6",[m
[36m@@ -276,12 +297,14 @@[m
     "asn1": {[m
       "version": "0.2.3",[m
       "resolved": "https://registry.npmjs.org/asn1/-/asn1-0.2.3.tgz",[m
[31m-      "integrity": "sha1-2sh4dxPJlmhJ/IGAd36+nB3fO4Y="[m
[32m+[m[32m      "integrity": "sha1-2sh4dxPJlmhJ/IGAd36+nB3fO4Y=",[m
[32m+[m[32m      "dev": true[m
     },[m
     "asn1.js": {[m
       "version": "4.9.2",[m
       "resolved": "https://registry.npmjs.org/asn1.js/-/asn1.js-4.9.2.tgz",[m
       "integrity": "sha512-b/OsSjvWEo8Pi8H0zsDd2P6Uqo2TK2pH8gNLSJtNLM2Db0v2QaAZ0pBQJXVjAn4g