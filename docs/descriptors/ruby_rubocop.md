<!-- markdownlint-disable MD033 MD041 -->
<!-- @generated by .automation/build.py, please do not update manually -->

<div align="center">
  <a href="https://rubocop.org/" target="blank" title="Visit linter Web Site">
    <img src="https://raw.githubusercontent.com/rubocop-hq/rubocop/master/logo/rubo-logo-horizontal.png" alt="rubocop" height="150px" class="megalinter-banner">
  </a>
</div>

## rubocop documentation

- Version in Mega-Linter: **0.82.0**
- Visit [Official Web Site](https://rubocop.org/){target=_blank}
- See [How to configure rubocop rules](https://docs.rubocop.org/rubocop/0.92/configuration.html){target=_blank}
  - If custom `.ruby-lint.yml` config file is not found, [.ruby-lint.yml](https://github.com/nvuillam/mega-linter/tree/master/TEMPLATES/.ruby-lint.yml){target=_blank} will be used
- See [How to disable rubocop rules in files](https://docs.rubocop.org/rubocop/0.92/configuration.html#disabling-cops-within-source-code){target=_blank}
- See [Index of problems detected by rubocop](https://docs.rubocop.org/rubocop/cops.html){target=_blank}

[![rubocop - GitHub](https://gh-card.dev/repos/rubocop-hq/rubocop.svg?fullname=)](https://github.com/rubocop-hq/rubocop){target=_blank}

## Configuration in Mega-Linter

- Enable rubocop by adding `RUBY_RUBOCOP` in [ENABLE_LINTERS variable](https://nvuillam.github.io/mega-linter/configuration/#activation-and-deactivation)
- Disable rubocop by adding `RUBY_RUBOCOP` in [DISABLE_LINTERS variable](https://nvuillam.github.io/mega-linter/configuration/#activation-and-deactivation)

- Enable **auto-fixes** by adding `RUBY_RUBOCOP` in [APPLY_FIXES variable](https://nvuillam.github.io/mega-linter/configuration/#apply-fixes)

| Variable                                 | Description                                                                                                                                                                                  | Default value                                    |
|------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------|
| RUBY_RUBOCOP_ARGUMENTS                   | User custom arguments to add in linter CLI call<br/>Ex: `-s --foo "bar"`                                                                                                                     |                                                  |
| RUBY_RUBOCOP_FILTER_REGEX_INCLUDE        | Custom regex including filter<br/>Ex: `(src\|lib)`                                                                                                                                           | Include every file                               |
| RUBY_RUBOCOP_FILTER_REGEX_EXCLUDE        | Custom regex excluding filter<br/>Ex: `(test\|examples)`                                                                                                                                     | Exclude no file                                  |
| RUBY_RUBOCOP_FILE_EXTENSIONS             | Allowed file extensions. `"*"` matches any extension, `""` matches empty extension. Empty list excludes all files<br/>Ex: `[".py", ""]`                                                      | `[".rb"]`                                        |
| RUBY_RUBOCOP_FILE_NAMES_REGEX            | File name regex filters. Regular expression list for filtering files by their base names using regex full match. Empty list includes all files<br/>Ex: `["Dockerfile(-.+)?", "Jenkinsfile"]` | Include every file                               |
| RUBY_RUBOCOP_PRE_COMMANDS                | List of bash commands to run before the linter                                                                                                                                               | None                                             |
| RUBY_RUBOCOP_POST_COMMANDS               | List of bash commands to run after the linter                                                                                                                                                | None                                             |
| RUBY_RUBOCOP_CONFIG_FILE                 | rubocop configuration file name</br>Use `LINTER_DEFAULT` to let the linter find it                                                                                                           | `.ruby-lint.yml`                                 |
| RUBY_RUBOCOP_RULES_PATH                  | Path where to find linter configuration file                                                                                                                                                 | Workspace folder, then Mega-Linter default rules |
| RUBY_RUBOCOP_DISABLE_ERRORS              | Run linter but consider errors as warnings                                                                                                                                                   | `false`                                          |
| RUBY_RUBOCOP_DISABLE_ERRORS_IF_LESS_THAN | Maximum number of errors allowed                                                                                                                                                             | `0`                                              |

## IDE Integration

Use rubocop in your favorite IDE to catch errors before Mega-Linter !

|                                                                    <!-- -->                                                                    | IDE                                                      | Extension Name                                                                             |                                                                               Install                                                                               |
|:----------------------------------------------------------------------------------------------------------------------------------------------:|----------------------------------------------------------|--------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|   <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/atom.ico" alt="" height="32px" class="megalinter-icon"></a>   | [Atom](https://atom.io/)                                 | [linter-rubocop](https://github.com/AtomLinter/linter-rubocop)                             |                                            [Visit Web Site](https://github.com/AtomLinter/linter-rubocop){target=_blank}                                            |
| <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/brackets.ico" alt="" height="32px" class="megalinter-icon"></a> | [Brackets](http://brackets.io/)                          | [brackets-rubocop](https://github.com/smockle-archive/brackets-rubocop)                    |                                        [Visit Web Site](https://github.com/smockle-archive/brackets-rubocop){target=_blank}                                         |
|  <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/emacs.ico" alt="" height="32px" class="megalinter-icon"></a>   | [Emacs](https://www.gnu.org/software/emacs/)             | [rubocop-emacs](https://github.com/rubocop-hq/rubocop-emacs)                               |                                            [Visit Web Site](https://github.com/rubocop-hq/rubocop-emacs){target=_blank}                                             |
|  <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/emacs.ico" alt="" height="32px" class="megalinter-icon"></a>   | [Emacs](https://www.gnu.org/software/emacs/)             | [flycheck](https://github.com/flycheck/flycheck)                                           |                                                [Visit Web Site](https://github.com/flycheck/flycheck){target=_blank}                                                |
|   <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/idea.ico" alt="" height="32px" class="megalinter-icon"></a>   | [IDEA](https://www.jetbrains.com/products.html#type=ide) | [RubyMine](https://www.jetbrains.com/help/idea/2017.1/rubocop.html)                        |                                      [Visit Web Site](https://www.jetbrains.com/help/idea/2017.1/rubocop.html){target=_blank}                                       |
| <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/sublime.ico" alt="" height="32px" class="megalinter-icon"></a>  | [Sublime Text](https://www.sublimetext.com/)             | [sublime_rubocop](https://github.com/pderichs/sublime_rubocop)                             |                                            [Visit Web Site](https://github.com/pderichs/sublime_rubocop){target=_blank}                                             |
|   <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/vim.ico" alt="" height="32px" class="megalinter-icon"></a>    | [vim](https://www.vim.org/)                              | [vim-rubocop](https://github.com/ngmy/vim-rubocop)                                         |                                                [Visit Web Site](https://github.com/ngmy/vim-rubocop){target=_blank}                                                 |
|   <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/vim.ico" alt="" height="32px" class="megalinter-icon"></a>    | [vim](https://www.vim.org/)                              | [ale](https://github.com/w0rp/ale)                                                         |                                                    [Visit Web Site](https://github.com/w0rp/ale){target=_blank}                                                     |
|  <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/vscode.ico" alt="" height="32px" class="megalinter-icon"></a>  | [Visual Studio Code](https://code.visualstudio.com/)     | [VsCode Ruby Extension](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby) | [![Install in VsCode](https://github.com/nvuillam/mega-linter/raw/master/docs/assets/images/btn_install_vscode.png)](vscode:extension/rebornix.Ruby){target=_blank} |

## Mega-Linter Flavours

This linter is available in the following flavours

|                                                                         <!-- -->                                                                          | Flavor                                                           | Description                       | Embedded linters |                                                                                                                                                                             Info |
|:---------------------------------------------------------------------------------------------------------------------------------------------------------:|:-----------------------------------------------------------------|:----------------------------------|:----------------:|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/images/mega-linter-square.png" alt="" height="32px" class="megalinter-icon"></a> | [all](https://nvuillam.github.io/mega-linter/supported-linters/) | Default Mega-Linter Flavor        |        93        |           ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter) |
|        <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/ruby.ico" alt="" height="32px" class="megalinter-icon"></a>         | [ruby](https://nvuillam.github.io/mega-linter/flavors/ruby/)     | Optimized for RUBY based projects |        40        | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-ruby/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-ruby) |

## Behind the scenes

### How are identified applicable files

- File extensions: `.rb`

<!-- markdownlint-disable -->
<!-- /* cSpell:disable */ -->
### How the linting is performed

- rubocop is called one time by identified file

### Example calls

```shell
rubocop --force-exclusion myfile.rb
```

```shell
rubocop --force-exclusion -c .ruby-lint.yml myfile.rb
```

```shell
rubocop --force-exclusion --safe-auto-correct -c .ruby-lint.yml myfile.rb
```


### Help content

```shell
Usage: rubocop [options] [file1, file2, ...]
    -L, --list-target-files          List all files RuboCop will inspect.
        --except [COP1,COP2,...]     Disable the given cop(s).
        --only [COP1,COP2,...]       Run only the given cop(s).
        --only-guide-cops            Run only cops for rules that link to a
                                     style guide.
    -c, --config FILE                Specify configuration file.
        --force-exclusion            Force excluding files specified in the
                                     configuration `Exclude` even if they are
                                     explicitly passed as arguments.
        --ignore-parent-exclusion    Prevent from inheriting AllCops/Exclude from
                                     parent folders.
        --force-default-config       Use default configuration even if configuration
                                     files are present in the directory tree.
        --auto-gen-config            Generate a configuration file acting as a
                                     TODO list.
        --exclude-limit COUNT        Used together with --auto-gen-config to
                                     set the limit for how many Exclude
                                     properties to generate. Default is 15.
        --disable-uncorrectable      Used with --auto-correct to annotate any
                                     offenses that do not support autocorrect
                                     with `rubocop:todo` comments.
        --no-offense-counts          Do not include offense counts in configuration
                                     file generated by --auto-gen-config.
        --auto-gen-only-exclude      Generate only Exclude parameters and not Max
                                     when running --auto-gen-config, except if the
                                     number of files with offenses is bigger than
                                     exclude-limit.
        --no-auto-gen-timestamp      Do not include the date and time when
                                     the --auto-gen-config was run in the file it
                                     generates.
        --init                       Generate a .rubocop.yml file in the current directory.
    -f, --format FORMATTER           Choose an output formatter. This option
                                     can be specified multiple times to enable
                                     multiple formatters at the same time.
                                     [p]rogress is used by default
                                       [a]utogenconf
                                       [c]lang
                                       [e]macs
                                       [fi]les
                                       [fu]ubar
                                       [h]tml
                                       [j]son
                                       [ju]nit
                                       [o]ffenses
                                       [pa]cman
                                       [p]rogress
                                       [q]uiet
                                       [s]imple
                                       [t]ap
                                       [w]orst
                                       custom formatter class name
    -o, --out FILE                   Write output to a file instead of STDOUT.
                                     This option applies to the previously
                                     specified --format, or the default format
                                     if no format is specified.
    -r, --require FILE               Require Ruby file.
        --fail-level SEVERITY        Minimum severity (A/R/C/W/E/F) for exit
                                     with error code.
        --display-only-fail-level-offenses
                                     Only output offense messages at
                                     the specified --fail-level or above
        --show-cops [COP1,COP2,...]  Shows the given cops, or all cops by
                                     default, and their configurations for the
                                     current directory.
    -F, --fail-fast                  Inspect files in order of modification
                                     time and stop after the first file
                                     containing offenses.
    -C, --cache FLAG                 Use result caching (FLAG=true) or don't
                                     (FLAG=false), default determined by
                                     configuration parameter AllCops: UseCache.
    -d, --debug                      Display debug info.
    -D, --[no-]display-cop-names     Display cop names in offense messages.
                                     Default is true.
    -E, --extra-details              Display extra details in offense messages.
    -S, --display-style-guide        Display style guide URLs in offense messages.
    -a, --auto-correct               Auto-correct offenses.
        --disable-pending-cops       Run without pending cops.
        --enable-pending-cops        Run with pending cops.
        --ignore-disable-comments    Run cops even when they are disabled locally
                                     with a comment.
        --safe                       Run only safe cops.
        --[no-]color                 Force color output on or off.
    -v, --version                    Display version.
    -V, --verbose-version            Display verbose version.
    -P, --parallel                   Use available CPUs to execute inspection in
                                     parallel.
    -l, --lint                       Run only lint cops.
    -x, --fix-layout                 Run only layout cops, with auto-correct on.
        --safe-auto-correct          Run auto-correct only when it's safe.
    -s, --stdin FILE                 Pipe source from STDIN, using FILE in offense
                                     reports. This is useful for editor integration.
```

### Installation on mega-linter Docker image

- GEM packages (Ruby) :
  - [rubocop:0.82.0](https://rubygems.org/gems/rubocop)
  - [rubocop-github:0.16.0](https://rubygems.org/gems/rubocop-github)
  - [rubocop-performance:1.7.1](https://rubygems.org/gems/rubocop-performance)
  - [rubocop-rails:2.5](https://rubygems.org/gems/rubocop-rails)
  - [rubocop-rspec:1.41.0](https://rubygems.org/gems/rubocop-rspec)

### Example success log

```shell
Results of rubocop linter (version 0.82.0)
See documentation on https://nvuillam.github.io/mega-linter/descriptors/ruby_rubocop/
-----------------------------------------------

[SUCCESS] .automation/test/ruby/ruby_good_1.rb
    Inspecting 1 file
    .
    
    1 file inspected, no offenses detected

```

### Example error log

```shell
Results of rubocop linter (version 0.82.0)
See documentation on https://nvuillam.github.io/mega-linter/descriptors/ruby_rubocop/
-----------------------------------------------

[ERROR] .automation/test/ruby/ruby_bad_1.rb
    Inspecting 1 file
    C
    
    Offenses:
    
    mp/lint/.automation/test/ruby/ruby_bad_1.rb:1:1: C: Style/FrozenStringLiteralComment: Missing frozen string literal comment.
    mp/lint/.automation/test/ruby/ruby_bad_1.rb:11:11: C: Style/StringLiterals: Prefer double-quoted strings unless you need single quotes to avoid extra backslashes for escaping.
    File.open('/tmp/urls.txt', " w" ) do | file|
              ^^^^^^^^^^^^^^^
    mp/lint/.automation/test/ruby/ruby_bad_1.rb:11:32: C: Layout/SpaceInsideParens: Space inside parentheses detected.
    File.open('/tmp/urls.txt', " w" ) do | file|
                                   ^
    mp/lint/.automation/test/ruby/ruby_bad_1.rb:11:39: C: Layout/SpaceAroundBlockParameters: Space before first block parameter detected.
    File.open('/tmp/urls.txt', " w" ) do | file|
                                          ^
    mp/lint/.automation/test/ruby/ruby_bad_1.rb:12:24: C: Layout/SpaceAroundBlockParameters: Space after last block parameter detected.
      Hook.active.map do |h |
                           ^
    mp/lint/.automation/test/ruby/ruby_bad_1.rb:13:13: C: Layout/SpaceInsideArrayLiteralBrackets: Do not use space inside array brackets.
        urls = [ ARRAY_OF_URLS_CALLING_INSTANCE]
                ^
    
    1 file inspected, 6 offenses detected

```
