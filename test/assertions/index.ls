{throws, does-not-throw} = require \assert

module.exports = new class EnvsCheckerAssertion
  check_required_envs: check_required_envs =
    * (check_required_envs)->
        throws ->
          check_required_envs <[SOME_ENV]>
  check_wanted_envs: check_wanted_envs =
    * (check_wanted_envs)->
        does-not-throw ->
          check_wanted_envs <[SOME_ENV]>
