;----------------------------------------------------------------------
;快捷键对应说明：
;-- shift:+
;-- alt  :!
;-- ctrl :^
;-- win  :#
;----------------------------------------------------------------------
;--------- 启动所有常用软件:ctrl+win+a
^#a::
{
  folder = %A_LineFile%\..\快捷方式目录名

  Loop, %folder%\*.lnk
  {
    run %folder%\%A_LoopFileName%
    sleep,2000
  }
  

  MsgBox,, Information, 完成启动程序 !
  return
}