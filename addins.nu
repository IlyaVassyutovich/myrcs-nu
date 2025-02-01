def mwd [pruri] {
    pwsh -C $"mwd ($pruri)"
}

def sln [] {
    ls | where name =~ `^.+\.sln$` | first | get name | start $in
}

def a7m [] {
    ^net use \\agamemnon.internal.iv.link\public /user:iv /persistent:yes
}
