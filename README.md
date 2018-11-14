# DL-AHK

## 简介

这里主要是存一些简单的 AHK 脚本示例。

目前包含的功能：

* 热字串
* 批量启动程序

## 管理

**以下内容仅供参考，未包含在当前项目中。**

通过 [AHK Script Manager](https://www.appinn.com/ahk-script-manager/) 管理、调用，并通过云同步软件同步 AHK 文件，实现在不同电脑、不同场合，通过相同的快捷键启动实现相同的功能。

脚本统一存放在 `AHK Script Manager` 的 `scripts` 目录下。其中：

文件：

* myAHK.ahk：供 `AHK Script Manager` 调用的入口文件，引用其他下层 ahk 文件，包括：基础自定义函数、自定义功能、热字串、快捷启动
* 快捷启动：

  * daily.ahk：日常启动程序
  * work.ahk：工作时启动程序
* SystemInformation.ahk
* all.ahk：自定义功能

文件夹：

* myAHK_Include_XXX：存放各类被引用 ahk 脚本文件。
* ShortCut_XXX：存放各类快捷方式，下分子文件夹，存放各电脑中安装路径不同的快捷方式。

大致的文件夹结构如下：

```
...\SCRIPTS
|   myAHK.ahk
|   
+---myAHK_Include
|   |   daily.ahk
|   |   work.ahk
|   |   
|   +---ShortCut_Cross
|   |   +---Run@StartDaily
|   |   |       xxx.lnk 
|   |   |       
|   |   +---Run@StartHome
|   |   |       yyy.lnk 
|   |   |       
|   |   +---Run@StartWork
|   |   |       zzz.lnk 
|   |   |       
|   |   \---Run@StartWork.XXX
|   |           
|   +---ShortCut_Win10
|   |   +---Run@StartDaily
|   |   |       xxx.lnk
|   |   |       
|   |   +---Run@StartHome
|   |   |       yyy.lnk
|   |   |       
|   |   +---Run@StartWork.XXX
|   |   |       zzz.lnk
|   |           
|   \---ShortCut_Win7
|       +---Run@StartDaily
|       |       xxx.lnk
|       |       
|       +---Run@StartHome
|       |       yyy.lnk
|       |       
|       +---Run@StartWork
|       |       zzz.lnk
|       |       
|       \---Run@StartWork.XXX
|               
+---myAHK_Include_Basic
|       SystemInformation.ahk
|       
+---myAHK_Include_Functions
|       all.ahk
|       
\---myAHK_Include_HotStrings
        quick input.ahk
        work.XXX.ahk
        
```

