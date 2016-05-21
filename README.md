## Usage

### check_required_envs
check_required_envs(envs, cb)
```
# If environment variable 'SOME_ENV' is 'foo'
<- check_required_envs <[SOME_ENV]>
console.log process.env.SOME_ENV # => (Output) 'foo'
```

```
# If environment variable 'SOME_ENV' is not defined
<- check_required_envs <[SOME_ENV]> # => (Error) 'Environment variable \'SOME_ENV\' not defined'
console.log process.env.SOME_ENV # => (Do Nothing)
```

### check_wanted_envs
check_wanted_envs(envs, cb)
```
# If environment variable 'SOME_ENV' is 'foo'
<- check_wanted_envs <[SOME_ENV]>
console.log process.env.SOME_ENV # => (Output) 'foo'
```

```
# If environment variable 'SOME_ENV' is not defined
<- check_wanted_envs <[SOME_ENV]> # => (Output) '[Warning] Environment variable \'SOME_ENV\' not defined'
console.log process.env.SOME_ENV # => (Output) undefined
```
