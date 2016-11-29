params ["_unit"];

_Speakers = ["CUP_D_Male01_TK", "CUP_D_Male02_TK", "CUP_D_Male03_TK", "CUP_D_Male04_TK", "CUP_D_Male05_TK"];
_Faces = ["PersianHead_A3_01", "GreekHead_A3_03"];

_RndSpeaker = _Speakers select floor(random(count _Speakers));
_RndFace = _Faces select floor(random(count _Faces));


_unit setSpeaker _RndSpeaker;
_unit setFace _RndFace;