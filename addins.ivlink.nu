def a7m [] {
    ^net use \\agamemnon.internal.iv.link\public /user:ilya_vassyutovich /persistent:yes
}

def scratch [] {
    ^code $env.me__ScratchPads__Dir
}
