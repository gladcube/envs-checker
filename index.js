require("livescript")
import$(global, require("prelude-ls"))
import$(global, require("glad-functions"))
module.exports = require("./lib/index.ls")

function import$(obj, src){
  for(var key in src) obj[key] = src[key];
  return obj;
}



