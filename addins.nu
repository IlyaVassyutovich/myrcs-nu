def mwd [pruri] {
    pwsh -C $"mwd ($pruri)"
}

def sln [] {
    ls | where name =~ `^.+\.sln$` | first | get name | start $in
}
