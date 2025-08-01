{ mkDerivation
, aeson
, base
, bytestring
, crypton
, errors
, hoauth2
, hspec
, http-client
, http-conduit
, http-types
, lib
, memory
, microlens
, mtl
, safe-exceptions
, text
, transformers
, unliftio
, uri-bytestring
, yesod-auth
, yesod-core
}:
mkDerivation {
  pname = "yesod-auth-oauth2";
  version = "0.7.4.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson
    base
    bytestring
    crypton
    errors
    hoauth2
    http-client
    http-conduit
    http-types
    memory
    microlens
    mtl
    safe-exceptions
    text
    transformers
    unliftio
    uri-bytestring
    yesod-auth
    yesod-core
  ];
  testHaskellDepends = [ base hspec uri-bytestring ];
  homepage = "http://github.com/freckle/yesod-auth-oauth2";
  description = "OAuth 2.0 authentication plugins";
  license = lib.licenses.mit;
}
