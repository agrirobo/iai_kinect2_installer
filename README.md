# iai_kinect_installer
The installer of iai_kinect2 for ubuntu

## CAUTION
- This installer give your system iai_kinect2. If conflict them, maybe overwrite them.
- このインストーラーはiai_kinect2をシステムにインストールします。もしブッキングした場合おそらく上書きされます。

## How to use this
### Download this repository

```bash
git clone --recursive https://github.com/agrirobo/iai_kinect_installer
```

### Run the installer

```bash
cd iai_kinect_installer && sh auto_install.sh
```

シェルスクリプトの指示を読んで`Enter`か`ctrl+C`を押してください。
一連の動作の中でEnterは2回要求されます。(始めの一回と、libfreenect2を入れた直後です)
