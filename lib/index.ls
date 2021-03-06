{except, if_, get, throw_, withl} = require \glad-functions

module.exports = new class EnvsChecker
  check_envs = (envs, handler, prefix, cb)->
    envs
    |> each (
      (withl (get _, process.env))
      >> except (at 0) >> (?),
        (at 1) >> ("#prefix Environment variable '" +) >> (+ "' not defined") >> handler
    ) |> if_ cb?, cb
  check_required_envs: (envs, cb)->
    check_envs envs, throw_, "", cb
  check_wanted_envs: (envs, cb)->
    check_envs envs, console~warn, "[Warning]", cb

