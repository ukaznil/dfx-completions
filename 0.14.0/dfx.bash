_dfx() {
    local i cur prev opts cmds
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    cmd=""
    opts=""

    for i in ${COMP_WORDS[@]}
    do
        case "${i}" in
            "$1")
                cmd="dfx"
                ;;
            _language-service)
                cmd+="___language__service"
                ;;
            account-id)
                cmd+="__account__id"
                ;;
            add-controller)
                cmd+="__add__controller"
                ;;
            addresses)
                cmd+="__addresses"
                ;;
            authorize)
                cmd+="__authorize"
                ;;
            balance)
                cmd+="__balance"
                ;;
            beta)
                cmd+="__beta"
                ;;
            bootstrap)
                cmd+="__bootstrap"
                ;;
            build)
                cmd+="__build"
                ;;
            cache)
                cmd+="__cache"
                ;;
            call)
                cmd+="__call"
                ;;
            canister)
                cmd+="__canister"
                ;;
            config)
                cmd+="__config"
                ;;
            controllers)
                cmd+="__controllers"
                ;;
            create)
                cmd+="__create"
                ;;
            create-canister)
                cmd+="__create__canister"
                ;;
            custodians)
                cmd+="__custodians"
                ;;
            deauthorize)
                cmd+="__deauthorize"
                ;;
            default)
                cmd+="__default"
                ;;
            delete)
                cmd+="__delete"
                ;;
            deploy)
                cmd+="__deploy"
                ;;
            deploy-wallet)
                cmd+="__deploy__wallet"
                ;;
            deposit-cycles)
                cmd+="__deposit__cycles"
                ;;
            diagnose)
                cmd+="__diagnose"
                ;;
            download)
                cmd+="__download"
                ;;
            export)
                cmd+="__export"
                ;;
            fabricate-cycles)
                cmd+="__fabricate__cycles"
                ;;
            fix)
                cmd+="__fix"
                ;;
            generate)
                cmd+="__generate"
                ;;
            generate-binding)
                cmd+="__generate__binding"
                ;;
            get-principal)
                cmd+="__get__principal"
                ;;
            get-wallet)
                cmd+="__get__wallet"
                ;;
            help)
                cmd+="__help"
                ;;
            id)
                cmd+="__id"
                ;;
            identity)
                cmd+="__identity"
                ;;
            import)
                cmd+="__import"
                ;;
            info)
                cmd+="__info"
                ;;
            install)
                cmd+="__install"
                ;;
            ledger)
                cmd+="__ledger"
                ;;
            list)
                cmd+="__list"
                ;;
            metadata)
                cmd+="__metadata"
                ;;
            name)
                cmd+="__name"
                ;;
            networks-json-path)
                cmd+="__networks__json__path"
                ;;
            new)
                cmd+="__new"
                ;;
            nns)
                cmd+="__nns"
                ;;
            notify)
                cmd+="__notify"
                ;;
            ping)
                cmd+="__ping"
                ;;
            project)
                cmd+="__project"
                ;;
            pull)
                cmd+="__pull"
                ;;
            quickstart)
                cmd+="__quickstart"
                ;;
            redeem-faucet-coupon)
                cmd+="__redeem__faucet__coupon"
                ;;
            remote)
                cmd+="__remote"
                ;;
            remove)
                cmd+="__remove"
                ;;
            remove-controller)
                cmd+="__remove__controller"
                ;;
            rename)
                cmd+="__rename"
                ;;
            replica)
                cmd+="__replica"
                ;;
            replica-port)
                cmd+="__replica__port"
                ;;
            replica-rev)
                cmd+="__replica__rev"
                ;;
            request-status)
                cmd+="__request__status"
                ;;
            schema)
                cmd+="__schema"
                ;;
            send)
                cmd+="__send"
                ;;
            set-name)
                cmd+="__set__name"
                ;;
            set-wallet)
                cmd+="__set__wallet"
                ;;
            show)
                cmd+="__show"
                ;;
            show-subnet-types)
                cmd+="__show__subnet__types"
                ;;
            sign)
                cmd+="__sign"
                ;;
            sns)
                cmd+="__sns"
                ;;
            start)
                cmd+="__start"
                ;;
            status)
                cmd+="__status"
                ;;
            stop)
                cmd+="__stop"
                ;;
            toolchain)
                cmd+="__toolchain"
                ;;
            top-up)
                cmd+="__top__up"
                ;;
            transfer)
                cmd+="__transfer"
                ;;
            uninstall)
                cmd+="__uninstall"
                ;;
            uninstall-code)
                cmd+="__uninstall__code"
                ;;
            update-settings)
                cmd+="__update__settings"
                ;;
            upgrade)
                cmd+="__upgrade"
                ;;
            use)
                cmd+="__use"
                ;;
            validate)
                cmd+="__validate"
                ;;
            wallet)
                cmd+="__wallet"
                ;;
            webserver-port)
                cmd+="__webserver__port"
                ;;
            whoami)
                cmd+="__whoami"
                ;;
            *)
                ;;
        esac
    done

    case "${cmd}" in
        dfx)
            opts="-h -V -v -q --help --version --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id beta bootstrap build cache canister deploy diagnose fix generate identity info _language-service ledger new nns ping pull quickstart remote replica schema sns start stop toolchain upgrade wallet help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx___language__service)
            opts="-h -v -q --force-tty --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__beta)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id project help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__beta__help)
            opts="-v -q --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <SUBCOMMAND>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__beta__project)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id import help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__beta__project__help)
            opts="-v -q --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <SUBCOMMAND>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__beta__project__import)
            opts="-h -v -q --all --prefix --network-mapping --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <LOCATION> <CANISTER_NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --prefix)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network-mapping)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__bootstrap)
            opts="-h -v -q --ip --port --network --timeout --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --ip)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --timeout)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__build)
            opts="-h -v -q --all --check --output-env-file --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER_NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --output-env-file)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__cache)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id delete install list show help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__cache__delete)
            opts="-h -v -q --version --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__cache__help)
            opts="-v -q --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <SUBCOMMAND>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__cache__install)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__cache__list)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__cache__show)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister)
            opts="-h -v -q --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id call create delete deposit-cycles id info install metadata request-status send sign start status stop uninstall-code update-settings help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__call)
            opts="-h -v -q --async --query --update --argument-file --random --type --output --with-cycles --candid --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER_NAME> <METHOD_NAME> <ARGUMENT>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --argument-file)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --random)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --type)
                    COMPREPLY=($(compgen -W "idl raw" -- "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "idl raw pp" -- "${cur}"))
                    return 0
                    ;;
                --with-cycles)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --candid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__create)
            opts="-c -h -v -q --all --with-cycles --specified-id --controller --compute-allocation --memory-allocation --freezing-threshold --no-wallet --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER_NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --with-cycles)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --specified-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --controller)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --compute-allocation)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --memory-allocation)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --freezing-threshold)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__delete)
            opts="-h -v -q --all --no-withdrawal --withdraw-cycles-to-canister --withdraw-cycles-to-dank --withdraw-cycles-to-dank-principal --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --withdraw-cycles-to-canister)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --withdraw-cycles-to-dank-principal)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__deposit__cycles)
            opts="-h -v -q --all --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CYCLES> <CANISTER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__help)
            opts="-v -q --network --wallet --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <SUBCOMMAND>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__id)
            opts="-h -v -q --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__info)
            opts="-h -v -q --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__install)
            opts="-m -y -h -v -q --all --async-call --mode --upgrade-unchanged --argument --argument-type --wasm --yes --no-asset-upgrade --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER> <OUTPUT_ENV_FILE>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --mode)
                    COMPREPLY=($(compgen -W "install reinstall upgrade auto" -- "${cur}"))
                    return 0
                    ;;
                -m)
                    COMPREPLY=($(compgen -W "install reinstall upgrade auto" -- "${cur}"))
                    return 0
                    ;;
                --argument)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --argument-type)
                    COMPREPLY=($(compgen -W "idl raw" -- "${cur}"))
                    return 0
                    ;;
                --wasm)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__metadata)
            opts="-h -v -q --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER_NAME> <METADATA_NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__request__status)
            opts="-h -v -q --output --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <REQUEST_ID> <CANISTER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --output)
                    COMPREPLY=($(compgen -W "idl raw pp" -- "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__send)
            opts="-h -v -q --status --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <FILE_NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__sign)
            opts="-h -v -q --query --update --argument-file --random --type --expire-after --file --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER_NAME> <METHOD_NAME> <ARGUMENT>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --argument-file)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --random)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --type)
                    COMPREPLY=($(compgen -W "idl raw" -- "${cur}"))
                    return 0
                    ;;
                --expire-after)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --file)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__start)
            opts="-h -v -q --all --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__status)
            opts="-h -v -q --all --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__stop)
            opts="-h -v -q --all --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__uninstall__code)
            opts="-h -v -q --all --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__canister__update__settings)
            opts="-c -h -v -q --all --set-controller --add-controller --remove-controller --compute-allocation --memory-allocation --freezing-threshold --confirm-very-long-freezing-threshold --network --wallet --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --set-controller)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --add-controller)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --remove-controller)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --compute-allocation)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --memory-allocation)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --freezing-threshold)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__deploy)
            opts="-m -y -h -v -q --argument --argument-type --mode --upgrade-unchanged --network --with-cycles --specified-id --wallet --no-wallet --output-env-file --yes --no-asset-upgrade --by-proposal --compute-evidence --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER_NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --argument)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --argument-type)
                    COMPREPLY=($(compgen -W "idl raw" -- "${cur}"))
                    return 0
                    ;;
                --mode)
                    COMPREPLY=($(compgen -W "reinstall" -- "${cur}"))
                    return 0
                    ;;
                -m)
                    COMPREPLY=($(compgen -W "reinstall" -- "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --with-cycles)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --specified-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wallet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output-env-file)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__diagnose)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__fix)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__generate)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER_NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__help)
            opts="-v -q --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <SUBCOMMAND>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__identity)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id deploy-wallet export get-wallet import list new get-principal remove rename set-wallet use whoami help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__identity__deploy__wallet)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER_ID>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__identity__export)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <EXPORTED_IDENTITY>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__identity__get__principal)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__identity__get__wallet)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__identity__help)
            opts="-v -q --network --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <SUBCOMMAND>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__identity__import)
            opts="-h -v -q --seed-file --disable-encryption --storage-mode --force --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <NEW_IDENTITY> <PEM_FILE>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --seed-file)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --storage-mode)
                    COMPREPLY=($(compgen -W "keyring password-protected plaintext" -- "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__identity__list)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__identity__new)
            opts="-h -v -q --hsm-pkcs11-lib-path --hsm-key-id --disable-encryption --storage-mode --force --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <NEW_IDENTITY>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --hsm-pkcs11-lib-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --hsm-key-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --storage-mode)
                    COMPREPLY=($(compgen -W "keyring password-protected plaintext" -- "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__identity__remove)
            opts="-h -v -q --drop-wallets --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <REMOVED_IDENTITY>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__identity__rename)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <FROM> <TO>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__identity__set__wallet)
            opts="-h -v -q --force --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER_NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__identity__use)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <NEW_IDENTITY>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__identity__whoami)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__info)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id replica-port replica-rev webserver-port networks-json-path help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__info__help)
            opts="-v -q --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <SUBCOMMAND>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__info__networks__json__path)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__info__replica__port)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__info__replica__rev)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__info__webserver__port)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__ledger)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id account-id balance create-canister fabricate-cycles notify show-subnet-types top-up transfer help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__ledger__account__id)
            opts="-h -v -q --of-principal --of-canister --subaccount --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --of-principal)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --of-canister)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --subaccount)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__ledger__balance)
            opts="-h -v -q --subaccount --ledger-canister-id --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <OF>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --subaccount)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ledger-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__ledger__create__canister)
            opts="-h -v -q --from-subaccount --amount --icp --e8s --fee --max-fee --created-at-time --subnet-type --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CONTROLLER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --from-subaccount)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --amount)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --icp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --e8s)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fee)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --max-fee)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --created-at-time)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --subnet-type)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__ledger__fabricate__cycles)
            opts="-h -v -q --cycles --amount --icp --e8s --t --canister --all --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --cycles)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --amount)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --icp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --e8s)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --t)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --canister)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__ledger__help)
            opts="-v -q --network --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <SUBCOMMAND>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__ledger__notify)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id create-canister top-up help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__ledger__notify__create__canister)
            opts="-h -v -q --subnet-type --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <BLOCK_HEIGHT> <CONTROLLER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --subnet-type)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__ledger__notify__help)
            opts="-v -q --network --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <SUBCOMMAND>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__ledger__notify__top__up)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <BLOCK_HEIGHT> <CANISTER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__ledger__show__subnet__types)
            opts="-h -v -q --cycles-minting-canister-id --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --cycles-minting-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__ledger__top__up)
            opts="-h -v -q --from-subaccount --amount --icp --e8s --fee --max-fee --created-at-time --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --from-subaccount)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --amount)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --icp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --e8s)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fee)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --max-fee)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --created-at-time)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__ledger__transfer)
            opts="-h -v -q --from-subaccount --amount --icp --e8s --memo --fee --ledger-canister-id --created-at-time --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <TO>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --from-subaccount)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --amount)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --icp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --e8s)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --memo)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fee)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ledger-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --created-at-time)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__new)
            opts="-h -v -q --type --dry-run --frontend --no-frontend --agent-version --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <PROJECT_NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --type)
                    COMPREPLY=($(compgen -W "motoko rust" -- "${cur}"))
                    return 0
                    ;;
                --agent-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__nns)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id import install help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__nns__help)
            opts="-v -q --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <SUBCOMMAND>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__nns__import)
            opts="-h -v -q --network-mapping --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network-mapping)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__nns__install)
            opts="-h -v -q --ledger-accounts --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --ledger-accounts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__ping)
            opts="-h -v -q --wait-healthy --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <NETWORK>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__pull)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER_NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__quickstart)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__remote)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id generate-binding help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__remote__generate__binding)
            opts="-h -v -q --all --overwrite --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CANISTER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__remote__help)
            opts="-v -q --network --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <SUBCOMMAND>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__replica)
            opts="-h -v -q --port --emulator --bitcoin-node --enable-bitcoin --enable-canister-http --artificial-delay --force --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --bitcoin-node)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --artificial-delay)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__schema)
            opts="-h -v -q --for --outfile --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --for)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --outfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__sns)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id config deploy import download help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__sns__config)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id create validate help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__sns__config__create)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__sns__config__help)
            opts="-v -q --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <SUBCOMMAND>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__sns__config__validate)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__sns__deploy)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__sns__download)
            opts="-h -v -q --ic-commit --wasms-dir --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --ic-commit)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --wasms-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__sns__help)
            opts="-v -q --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <SUBCOMMAND>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__sns__import)
            opts="-h -v -q --network-mapping --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network-mapping)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__start)
            opts="-h -v -q --host --background --clean --emulator --bitcoin-node --enable-bitcoin --enable-canister-http --artificial-delay --force --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --host)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --bitcoin-node)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --artificial-delay)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__stop)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__toolchain)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id install uninstall list default help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__toolchain__default)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <TOOLCHAIN>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__toolchain__help)
            opts="-v -q --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <SUBCOMMAND>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__toolchain__install)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <TOOLCHAINS>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__toolchain__list)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__toolchain__uninstall)
            opts="-h -v -q --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <TOOLCHAINS>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__upgrade)
            opts="-h -v -q --current-version --release-root --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --current-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --release-root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__wallet)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id addresses add-controller authorize balance controllers custodians deauthorize name redeem-faucet-coupon remove-controller send set-name upgrade help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__wallet__add__controller)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CONTROLLER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__wallet__addresses)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__wallet__authorize)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CUSTODIAN>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__wallet__balance)
            opts="-h -v -q --precise --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__wallet__controllers)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__wallet__custodians)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__wallet__deauthorize)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CUSTODIAN>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__wallet__help)
            opts="-v -q --network --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <SUBCOMMAND>..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__wallet__name)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__wallet__redeem__faucet__coupon)
            opts="-h -v -q --faucet --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <COUPON_CODE>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --faucet)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__wallet__remove__controller)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <CONTROLLER>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__wallet__send)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <DESTINATION> <AMOUNT>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__wallet__set__name)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id <NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        dfx__wallet__upgrade)
            opts="-h -v -q --network --help --verbose --quiet --log --logfile --identity --provisional-create-canister-effective-canister-id"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --network)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log)
                    COMPREPLY=($(compgen -W "stderr tee file" -- "${cur}"))
                    return 0
                    ;;
                --logfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --identity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --provisional-create-canister-effective-canister-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
    esac
}

complete -F _dfx -o bashdefault -o default dfx
