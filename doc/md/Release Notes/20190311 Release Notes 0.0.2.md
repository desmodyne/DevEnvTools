    commit bb17e2b2f85ffc6a585898cb26dc4302e07c193c
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Mon Mar 11 07:51:47 2019 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Mon Mar 11 07:51:47 2019 +0100
    
        [#1]: update project version
    
    commit b068ce3fc2fbdf4e62f45c32328c87aa1734f8cb
    Merge: f86d084 567c213
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Mon Mar 11 06:45:59 2019 +0000
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Mon Mar 11 06:45:59 2019 +0000
    
        Merge branch 'feature/10/migrate_download-repos_to_DevEnv_project' into 'develop'
        
        Feature/10/migrate download repos to dev env project
        
        See merge request DesmoDyne/Tools/DevEnvTools!11
    
    commit 567c21384cb5d2a16d9e626e434dfd25a6ca6fc8
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Mon Mar 11 07:30:44 2019 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Mon Mar 11 07:30:44 2019 +0100
    
        [#10]: fix shellcheck issues
    
    commit 4016814f443906065cbb27e4af9bb352b3a28305
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Mon Mar 11 07:26:00 2019 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Mon Mar 11 07:26:00 2019 +0100
    
        [#10]: adapt to function renamed in BashLib
    
    commit 47988101372e0f67743479bb9799506dc8dc675c
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Sun Mar 10 20:02:16 2019 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Sun Mar 10 20:02:16 2019 +0100
    
        [#10]: support multiple gitlab to local mappings; remove Project0:
        
        workaround for gitlab.com bug is no longer required
    
    commit 5c592a4f4bdbbf434e8c4df4bbcf6366ce50fae9
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Sun Mar 10 18:00:30 2019 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Sun Mar 10 18:00:30 2019 +0100
    
        [#10]: review and align script and conf with convention:
        
        + do no longer use paths relative to project root
        + adapt to changed parameter order in recent version of yq
        + use BashLib as installed using brew package
    
    commit 4c03b7d0e56f8b9448ce9d86c207ed9e6d152152
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Sun Mar 10 12:27:49 2019 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Sun Mar 10 12:27:49 2019 +0100
    
        [#10]: add dd- prefix to align script and conf names with convention
    
    commit 8e3593419cb7bbc968cad0700da44133fa8cbb39
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Sun Mar 10 12:20:10 2019 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Sun Mar 10 12:20:10 2019 +0100
    
        [#10]: migrate download-repos script and conf; taken from private repo:
        
        https://gitlab.com/DesmoDyne/Infrastructure/Services/blob/develop/ ...
          ... Version%20Control/gitlab/code/bin/download-repos
          ... Version%20Control/gitlab/conf/download-repos.dd-ssc.yaml
    
    commit 2acf27a699fa7c2a02b05236e81be034d3783b4f
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Sun Mar 10 12:04:37 2019 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Sun Mar 10 12:04:37 2019 +0100
    
        [#10]: add MIT license file
    
    commit 1fec6192cd9d551ec3e8f7053803a7234bee6f30
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Sun Mar 10 12:01:38 2019 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Sun Mar 10 12:01:38 2019 +0100
    
        [#10]: rename project to DevEnvTools, update README to match conventions
    
    commit f86d084a907a02b98cd0891a12d278b8e188f530
    Merge: 07b0e02 e5e4fd8
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Sun Mar 10 10:40:46 2019 +0000
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Sun Mar 10 10:40:46 2019 +0000
    
        Merge branch 'feature/8/use_in_production_and_improve' into 'develop'
        
        Feature/8/use in production and improve
        
        See merge request DesmoDyne/Tools/DevEnv!10
    
    commit e5e4fd8ab1fdda18cae0ba4ee441d856c74b26f1
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Thu Feb 14 08:54:06 2019 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Thu Feb 14 08:54:06 2019 +0100
    
        [#8]: fix order of command and switch for latest yq version
    
    commit 00a9f65640df5cc03e18da25f8c4a772a5228f20
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Fri Feb 8 14:25:34 2019 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Fri Feb 8 14:25:34 2019 +0100
    
        [#8]: add dd / desmodyne.com
    
    commit 2408a7146fc07f7b8c6f2f07765bf3ecbec4228b
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Tue Dec 4 19:03:05 2018 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Tue Dec 4 19:03:05 2018 +0100
    
        [#8]: fix long standing TODO around mapfile
    
    commit a65f936d2702af5d821796d3c8eeaeb322d169f3
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Tue Dec 4 18:47:21 2018 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Tue Dec 4 18:47:21 2018 +0100
    
        [#8]: add tb / ToolBox
    
    commit 49a11fd8aeb5aa8e3418e887ee4a358d680c2372
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Tue Dec 4 18:46:09 2018 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Tue Dec 4 18:46:09 2018 +0100
    
        [#8]: change mail / MailFlow to mfbe mffe / MailFlow Backend Frontend
    
    commit 9c981757606b38029d46db615ccf59ce8b303c6b
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Tue Dec 4 17:36:47 2018 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Tue Dec 4 17:36:47 2018 +0100
    
        [#8]: add dbe dfe dws / Diskurs Backend Frontend Website configurations
    
    commit 07b0e02dd72b5f3d97a8b61cad1597a4bcc39f8c
    Merge: a1d6c73 6e5551a
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Thu Oct 25 21:05:36 2018 +0000
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Thu Oct 25 21:05:36 2018 +0000
    
        Merge branch 'feature/7/add_bash_auto-completion' into 'develop'
        
        Feature/7/add bash auto completion
        
        See merge request DesmoDyne/Tools/DevEnv!9
    
    commit 6e5551a9fd00a7f2bd465a6a882d87e2075bb63a
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Sat Oct 6 13:23:28 2018 +0200
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Thu Oct 25 23:00:59 2018 +0200
    
        [#7]: add vault / Vault
    
    commit a658867c74b7df691bdf2080f2d790cab23218ce
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Sat Oct 6 13:16:00 2018 +0200
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Thu Oct 25 22:58:31 2018 +0200
    
        [#7]: add bl / BashLib
    
    commit 05d6fe0ef491be626b69b0e031894227dae070e4
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Sun Jul 22 11:14:24 2018 +0200
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Thu Oct 25 22:55:54 2018 +0200
    
        [#7]: add DevEnv, DebiTools and MailFlow confs; open Terminal; add TODO
    
    commit 4665f6837c984a2d2fd5b2db75a113198aa585e2
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Wed Jul 11 22:42:14 2018 +0200
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Thu Oct 25 22:46:04 2018 +0200
    
        [#7]: implement op (for "open project") for even shorter command line
    
    commit 043b86bc3a5cb2f57dec9497e17c4d5505a70c13
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Wed Jul 11 22:23:32 2018 +0200
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Thu Oct 25 22:43:29 2018 +0200
    
        [#7]: add more project confs; support leading digits in project IDs
    
    commit a75b86980ea90146a8aec65ea4b3a4eec3ff800c
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Wed Jul 11 22:06:20 2018 +0200
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Thu Oct 25 22:37:32 2018 +0200
    
        [#7]: refactor approach: take project ID that references config section
    
    commit 35b227d1b83ecefa9939bb8f1da3765b3423c23f
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Wed Jul 11 21:08:27 2018 +0200
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Thu Oct 25 22:31:48 2018 +0200
    
        [#7]: get bash completion going with some random / sample project IDs
    
    commit a1d6c732529573731e49251f421dfe87c1d6e493
    Merge: ba68ece a70a64d
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Fri Feb 9 09:53:25 2018 +0000
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Fri Feb 9 09:53:25 2018 +0000
    
        Merge branch 'feature/6/create_an_op_tool' into 'develop'
        
        [#6]: add a first version of the tool, many TODOs still due; fix typo
        
        See merge request DesmoDyne/Tools/DevEnv!8
    
    commit a70a64d397a8dd46d846e359b34bd17a5c765b82
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Wed Jan 3 13:44:59 2018 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Fri Feb 9 10:36:21 2018 +0100
    
        [#6]: add a first version of the tool, many TODOs still due; fix typo
    
    commit ba68ece4695f45e103da41558f413613dfaf7db0
    Merge: 23a5c28 ef790aa
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Wed Jan 3 12:25:38 2018 +0000
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Wed Jan 3 12:25:38 2018 +0000
    
        Merge branch 'feature/4/mount_remote_file_system' into 'develop'
        
        [#4]: align script name; fix shellcheck issues; add TODO comments
        
        See merge request DesmoDyne/Tools/DevEnv!7
    
    commit ef790aa7aca2615df6a61e6ba2cb39776401413a
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Wed Jan 3 13:24:56 2018 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Wed Jan 3 13:24:56 2018 +0100
    
        [#4]: align script name; fix shellcheck issues; add TODO comments
    
    commit 23a5c285bb9723a560e4ec3604f498f7e566c2e6
    Merge: a5fea52 02b606e
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Wed Jan 3 12:11:46 2018 +0000
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Wed Jan 3 12:11:46 2018 +0000
    
        Merge branch 'feature/4/mount_remote_file_system' into 'develop'
        
        [#4]: support IP addresses instead of hostnames; add TODO comment
        
        See merge request DesmoDyne/Tools/DevEnv!6
    
    commit 02b606ef0c436a71998154e36a7009e75fcdb423
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Wed Jan 3 13:10:43 2018 +0100
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Wed Jan 3 13:10:43 2018 +0100
    
        [#4]: support IP addresses instead of hostnames; add TODO comment
    
    commit a5fea52491a09076038deb5209320c2d3565ac5b
    Merge: 7396082 92592fa
    Author:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    AuthorDate: Thu Sep 14 12:34:05 2017 +0200
    Commit:     Stefan Schablowski <stefan.schablowski@desmodyne.com>
    CommitDate: Thu Sep 14 12:34:05 2017 +0200
    
        Merge tag '0.0.1' into develop
        
        automatically_created_release_tag 0.0.1
    
