#################################
# git-posh
#################################
Import-Module 'C:\Users\klingra\Code\posh-git\src\posh-git.psd1'
$GitPromptSettings.DefaultPromptPath.ForegroundColor = 0xFFA500
$GitPromptSettings.DefaultPromptBeforeSuffix.Text = '`n'

#################################
# kubebtl
#################################
$Env:kubectlEnv = 'dev';

function k {
    kubectl $args
}

function kenv {
    $Env:kubectlEnv = $args[0];
}

# ex: kpods dev [extra args]
function kpods {
    $env = getKubectlEnv;
    $namespace = "${env}-online";
    $rest = $args -join ' ';
    # "-o wide" = print with more info
    kubectlEchoAndExec get pods --namespace $namespace -o wide $rest
}

# kubectl logs --namespace prd-online online-orderaccept-consumer-75cbcd79dc-5grsk -c online-orderaccept-consumer
function klogs {
    $env = getKubectlEnv;
    $namespace = "${env}-online";
    $rest = $args -join ' ';
    # "-o wide" = print with more info
    kubectlEchoAndExec logs --namespace $namespace $rest
}

# echo command and exec it
function kubectlEchoAndExec {
    $str = $args -join ' ';
    Write-Output "$ kubectl ${str}";
    kubectl $args;
}

# get user iinput value or default
function getKubectlEnv {
    $defaultEnv = $Env:kubectlEnv;
    $val = Read-Host -Prompt "What env? (Default is '${defaultEnv}')";
    
    # return default if null or empty
    if($null -eq $val){
        return $defaultEnv;
    }
    else {
        $trimmed = $val -replace '\s', '';
        if($trimmed -eq ''){
            return $defaultEnv;
        }
    }

    return $val;
}
