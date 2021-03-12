let openssl =
      https://raw.githubusercontent.com/jvanbruegge/dhall-openssl/master/package.dhall

in  openssl.mkCaConfig
      openssl.CaConfig::{
      , distinguishedName = openssl.DistinguishedName::{
        , commonName = "Backbone Cabal Certificate Authority"
        }
      , allowedHosts = [ "backbonecabal.net", "backbonecabal.local" ]
      , caDir = "ca"
      }
