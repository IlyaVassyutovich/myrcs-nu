def sln [] {
    ls | where name =~ `^.+\.sln$` | first | get name | start $in
}
