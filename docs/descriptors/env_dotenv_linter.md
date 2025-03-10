<!-- markdownlint-disable MD033 MD041 -->
<!-- @generated by .automation/build.py, please do not update manually -->

<div align="center">
  <a href="https://dotenv-linter.github.io/" target="blank" title="Visit linter Web Site">
    <img src="https://raw.githubusercontent.com/dotenv-linter/dotenv-linter/master/logo.svg" alt="dotenv-linter" height="150px" class="megalinter-banner">
  </a>
</div>

## dotenv-linter documentation

- Version in Mega-Linter: **3.1.1**
- Visit [Official Web Site](https://dotenv-linter.github.io/){target=_blank}
- See [Index of problems detected by dotenv-linter](https://dotenv-linter.github.io/#/?id=dotenv-linter){target=_blank}

[![dotenv-linter - GitHub](https://gh-card.dev/repos/dotenv-linter/dotenv-linter.svg?fullname=)](https://github.com/dotenv-linter/dotenv-linter){target=_blank}

## Configuration in Mega-Linter

- Enable dotenv-linter by adding `ENV_DOTENV_LINTER` in [ENABLE_LINTERS variable](https://nvuillam.github.io/mega-linter/configuration/#activation-and-deactivation)
- Disable dotenv-linter by adding `ENV_DOTENV_LINTER` in [DISABLE_LINTERS variable](https://nvuillam.github.io/mega-linter/configuration/#activation-and-deactivation)

- Enable **auto-fixes** by adding `ENV_DOTENV_LINTER` in [APPLY_FIXES variable](https://nvuillam.github.io/mega-linter/configuration/#apply-fixes)

| Variable                                      | Description                                                                                                                                                                                  | Default value      |
|-----------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------|
| ENV_DOTENV_LINTER_ARGUMENTS                   | User custom arguments to add in linter CLI call<br/>Ex: `-s --foo "bar"`                                                                                                                     |                    |
| ENV_DOTENV_LINTER_FILTER_REGEX_INCLUDE        | Custom regex including filter<br/>Ex: `(src\|lib)`                                                                                                                                           | Include every file |
| ENV_DOTENV_LINTER_FILTER_REGEX_EXCLUDE        | Custom regex excluding filter<br/>Ex: `(test\|examples)`                                                                                                                                     | Exclude no file    |
| ENV_DOTENV_LINTER_FILE_EXTENSIONS             | Allowed file extensions. `"*"` matches any extension, `""` matches empty extension. Empty list excludes all files<br/>Ex: `[".py", ""]`                                                      | `[".env"]`         |
| ENV_DOTENV_LINTER_FILE_NAMES_REGEX            | File name regex filters. Regular expression list for filtering files by their base names using regex full match. Empty list includes all files<br/>Ex: `["Dockerfile(-.+)?", "Jenkinsfile"]` | Include every file |
| ENV_DOTENV_LINTER_PRE_COMMANDS                | List of bash commands to run before the linter                                                                                                                                               | None               |
| ENV_DOTENV_LINTER_POST_COMMANDS               | List of bash commands to run after the linter                                                                                                                                                | None               |
| ENV_DOTENV_LINTER_DISABLE_ERRORS              | Run linter but consider errors as warnings                                                                                                                                                   | `false`            |
| ENV_DOTENV_LINTER_DISABLE_ERRORS_IF_LESS_THAN | Maximum number of errors allowed                                                                                                                                                             | `0`                |

## Mega-Linter Flavours

This linter is available in the following flavours

|                                                                         <!-- -->                                                                          | Flavor                                                                         | Description                                                            | Embedded linters |                                                                                                                                                                                               Info |
|:---------------------------------------------------------------------------------------------------------------------------------------------------------:|:-------------------------------------------------------------------------------|:-----------------------------------------------------------------------|:----------------:|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/images/mega-linter-square.png" alt="" height="32px" class="megalinter-icon"></a> | [all](https://nvuillam.github.io/mega-linter/supported-linters/)               | Default Mega-Linter Flavor                                             |        93        |                             ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter) |
|      <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/ci_light.ico" alt="" height="32px" class="megalinter-icon"></a>       | [ci_light](https://nvuillam.github.io/mega-linter/flavors/ci_light/)           | Optimized for CI items (Dockerfile, Jenkinsfile, JSON/YAML schemas,XML |        13        |           ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-ci_light/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-ci_light) |
|        <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/dart.ico" alt="" height="32px" class="megalinter-icon"></a>         | [dart](https://nvuillam.github.io/mega-linter/flavors/dart/)                   | Optimized for DART based projects                                      |        40        |                   ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-dart/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-dart) |
|    <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/documentation.ico" alt="" height="32px" class="megalinter-icon"></a>    | [documentation](https://nvuillam.github.io/mega-linter/flavors/documentation/) | Mega-Linter for documentation projects                                 |        39        | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-documentation/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-documentation) |
|       <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/dotnet.ico" alt="" height="32px" class="megalinter-icon"></a>        | [dotnet](https://nvuillam.github.io/mega-linter/flavors/dotnet/)               | Optimized for C, C++, C# or VB based projects                          |        46        |               ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-dotnet/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-dotnet) |
|         <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/go.ico" alt="" height="32px" class="megalinter-icon"></a>          | [go](https://nvuillam.github.io/mega-linter/flavors/go/)                       | Optimized for GO based projects                                        |        41        |                       ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-go/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-go) |
|        <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/java.ico" alt="" height="32px" class="megalinter-icon"></a>         | [java](https://nvuillam.github.io/mega-linter/flavors/java/)                   | Optimized for JAVA based projects                                      |        41        |                   ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-java/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-java) |
|     <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/javascript.ico" alt="" height="32px" class="megalinter-icon"></a>      | [javascript](https://nvuillam.github.io/mega-linter/flavors/javascript/)       | Optimized for JAVASCRIPT or TYPESCRIPT based projects                  |        48        |       ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-javascript/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-javascript) |
|         <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/php.ico" alt="" height="32px" class="megalinter-icon"></a>         | [php](https://nvuillam.github.io/mega-linter/flavors/php/)                     | Optimized for PHP based projects                                       |        43        |                     ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-php/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-php) |
|       <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/python.ico" alt="" height="32px" class="megalinter-icon"></a>        | [python](https://nvuillam.github.io/mega-linter/flavors/python/)               | Optimized for PYTHON based projects                                    |        48        |               ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-python/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-python) |
|        <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/ruby.ico" alt="" height="32px" class="megalinter-icon"></a>         | [ruby](https://nvuillam.github.io/mega-linter/flavors/ruby/)                   | Optimized for RUBY based projects                                      |        40        |                   ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-ruby/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-ruby) |
|        <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/rust.ico" alt="" height="32px" class="megalinter-icon"></a>         | [rust](https://nvuillam.github.io/mega-linter/flavors/rust/)                   | Optimized for RUST based projects                                      |        40        |                   ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-rust/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-rust) |
|     <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/salesforce.ico" alt="" height="32px" class="megalinter-icon"></a>      | [salesforce](https://nvuillam.github.io/mega-linter/flavors/salesforce/)       | Optimized for Salesforce based projects                                |        42        |       ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-salesforce/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-salesforce) |
|        <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/scala.ico" alt="" height="32px" class="megalinter-icon"></a>        | [scala](https://nvuillam.github.io/mega-linter/flavors/scala/)                 | Optimized for SCALA based projects                                     |        40        |                 ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-scala/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-scala) |
|        <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/swift.ico" alt="" height="32px" class="megalinter-icon"></a>        | [swift](https://nvuillam.github.io/mega-linter/flavors/swift/)                 | Optimized for SWIFT based projects                                     |        40        |                 ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-swift/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-swift) |
|      <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/terraform.ico" alt="" height="32px" class="megalinter-icon"></a>      | [terraform](https://nvuillam.github.io/mega-linter/flavors/terraform/)         | Optimized for TERRAFORM based projects                                 |        44        |         ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-terraform/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-terraform) |

## Behind the scenes

### How are identified applicable files

- File extensions: `.env`

<!-- markdownlint-disable -->
<!-- /* cSpell:disable */ -->
### How the linting is performed

- dotenv-linter is called one time by identified file

### Example calls

```shell
dotenv-linter myfile.env
```

```shell
dotenv-linter fix myfile.env
```


### Help content

```shell
dotenv-linter 3.1.1
Mikhail Grachev <work@mgrachev.com>
Lightning-fast linter for .env files

USAGE:
    dotenv-linter [FLAGS] [OPTIONS] <input>... [SUBCOMMAND]

FLAGS:
    -h, --help         Prints help information
        --no-color     Turns off the colored output
    -q, --quiet        Doesn't display additional information
    -r, --recursive    Recursively searches and checks .env files
    -v, --version      Prints version information

OPTIONS:
    -e, --exclude <FILE_NAME>...    Excludes files from check
    -s, --skip <CHECK_NAME>...      Skips checks

ARGS:
    <input>...    files or paths [default: /]

SUBCOMMANDS:
    compare    Compares if files have the same keys [aliases: c]
    fix        Automatically fixes warnings [aliases: f]
    list       Shows list of available checks [aliases: l]
```

### Installation on mega-linter Docker image

- Dockerfile commands :
```dockerfile
RUN wget -q -O - https://raw.githubusercontent.com/dotenv-linter/dotenv-linter/master/install.sh | sh -s
```


### Example success log

```shell
Results of dotenv-linter linter (version 2.2.1)
See documentation on https://nvuillam.github.io/mega-linter/descriptors/env_dotenv_linter/
-----------------------------------------------

[SUCCESS] .automation/test/env/env_good_1.env
    

```

### Example error log

```shell
Results of dotenv-linter linter (version 2.2.1)
See documentation on https://nvuillam.github.io/mega-linter/descriptors/env_dotenv_linter/
-----------------------------------------------

[ERROR] .automation/test/env/env_bad_1.env
    .automation/test/env/env_bad_1.env:1 LeadingCharacter: Invalid leading character detected
    .automation/test/env/env_bad_1.env:2 KeyWithoutValue: The MY_ENV key should be with a value or have an equal sign
    .automation/test/env/env_bad_1.env:3 IncorrectDelimiter: The DB-NAME key has incorrect delimiter
    .automation/test/env/env_bad_1.env:3 UnorderedKey: The DB-NAME key should go before the LOGGER_LEVEL key
    .automation/test/env/env_bad_1.env:4 LowercaseKey: The DEbUG_hTTP key should be in uppercase
    .automation/test/env/env_bad_1.env:4 UnorderedKey: The DEbUG_hTTP key should go before the LOGGER_LEVEL key
    .automation/test/env/env_bad_1.env:5 UnorderedKey: The DB_NAME key should go before the DEbUG_hTTP key
    
    Found 7 problems

```
