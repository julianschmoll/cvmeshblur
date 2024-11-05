# cvmeshblur

A deformer by Chad Vernon that simulates motion blur geometrically. The amount and falloff of the "blur" can be adjusted with keyable attributes.

## Showcase on YouTube

[![Showcase](https://img.youtube.com/vi/iBAxzxBAI7k/0.jpg)](https://www.youtube.com/watch?v=iBAxzxBAI7k)

## Usage

Add the plugin to maya either by using the `MAYA_PLUG_IN_PATH` env var or through the Plugin interface within the Maya UI. After that you can add a deformer to a mesh by selecting it in the viewport and running either of those commands:

```python
from pymel import core as pm

pm.animation.deformer(type="cvMeshBlur")
```
```python
from maya import cmds

cmds.deformer(type="cvMeshBlur")
```
