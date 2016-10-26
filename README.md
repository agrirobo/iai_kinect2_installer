# The installer of iai_kinect for ubuntu
The installer of iai_kinect for ubuntu

## CAPTION
- This installer give your system iai_kinect2. If reject them, maybe overwrite them.
- このインストーラーはiai_kinect2をシステムにインストールします。もしブッキングした場合おそらく上書きされます。

## How do you use this
### Repository clone

```bash
git clone --recursive https://github.com/agrirobo/iai_kinect_installer
```

### Auto installation

```bash
cd iai_kinect_installer && sh auto_install.sh
```

シェルスクリプトの指示を読んで`Enter`か`ctrl+C`を押してください。
一連の動作の中でEnterは2回要求されます。(始めの一回と、libfreenect2を入れた直後です)
