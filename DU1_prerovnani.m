(* ::Package:: *)

(* ::Title:: *)
(**)
(*Uk\[AAcute]zka vyu\[ZHacek]it\[IAcute] Schl\[ODoubleDot]milchovy v\[EHacek]ty na p\[RHacek]erovn\[AAcute]n\[IAcute] \[RHacek]ady    \!\(TraditionalForm\`\**)
(*UnderoverscriptBox["\[Sum]", *)
(*RowBox[{*)
(*StyleBox["k", "TI"], "==", "1"}], "\[Infinity]",*)
(*LimitsPositioning->True]\**)
(*FractionBox[*)
(*SuperscriptBox[*)
(*RowBox[{"(", *)
(*RowBox[{"-", "1"}], ")"}], *)
(*RowBox[{*)
(*StyleBox["k", "TI"], "-", "1"}]], *)
(*StyleBox["k", "TI"]]\)*)


(* ::Subsubtitle:: *)
(*Simona Bury\[SHacek]kov\[AAcute], Jan Hrube\[SHacek]*)


(* ::Section:: *)
(*1 Zkouman\[AAcute] \[RHacek]ada*)


(* ::Text:: *)
(*Vyp\[IAcute]\[SHacek]eme si pro p\[RHacek]edstavu n\[EHacek]kolik prvn\[IAcute]ch \[CHacek]len\[URing] zkouman\[EAcute] \[RHacek]ady:*)


(* ::Input:: *)
(*clenyUkazka = Table[(-1)^(k-1)/k, {k,1,10}]*)
(*cleny = Table[(-1)^(k-1)/k, {k,1,100}];*)


(* ::Input:: *)
(**)


(* ::Text:: *)
(*Posloupnost \[CHacek]\[AAcute]ste\[CHacek]n\[YAcute]ch sou\[CHacek]t\[URing] pro prvn\[IAcute]ch 100 \[CHacek]len\[URing] vypad\[AAcute] takto (zkr\[AAcute]cen\[EHacek]):*)


(* ::Input:: *)
(*castecnesoucty = Accumulate[cleny];*)
(*Short[castecnesoucty,3]*)
(**)


(* ::Text:: *)
(*\[CapitalRHacek]ada je neabsolutn\[EHacek] konvergentn\[IAcute]\^\(1\) (harmonick\[AAcute] \[RHacek]ada toti\[ZHacek] diverguje) a plat\[IAcute] \!\(TraditionalForm\`\**)
(*UnderoverscriptBox["\[Sum]", *)
(*RowBox[{*)
(*StyleBox["k", "TI"], "==", "1"}], "\[Infinity]",*)
(*LimitsPositioning->True]\**)
(*FractionBox[*)
(*SuperscriptBox[*)
(*RowBox[{"(", *)
(*RowBox[{"-", "1"}], ")"}], *)
(*RowBox[{*)
(*StyleBox["k", "TI"], "-", "1"}]], *)
(*StyleBox["k", "TI"]] == ln  2\).*)


(* ::Text:: *)
(*Konvergenci posloupnosti \[CHacek]\[AAcute]ste\[CHacek]n\[YAcute]ch sou\[CHacek]t\[URing] k sou\[CHacek]tu \[RHacek]ady zn\[AAcute]zor\[NHacek]uje Graf 1.*)
(**)


(* ::Input:: *)
(*castecnesouctyPlot = ListPlot[castecnesoucty];*)
(*limitaPuvodni= Plot[Log[2], {x, 1, 100}];*)
(*Show[castecnesouctyPlot, limitaPuvodni,%21,AxesLabel->{HoldForm[n],HoldForm[a_n]},PlotLabel->HoldForm[Graf 1 - Konvergence posl . \[CHacek]\[AAcute]ste\[CHacek]n\[YAcute]ch sou\[CHacek]t\[URing]],LabelStyle->{GrayLevel[0]}]*)
(**)


(* ::Section:: *)
(**)
(*2 P\[RHacek]erovn\[AAcute]n\[IAcute] \[RHacek]ady pomoc\[IAcute] Schl\[ODoubleDot]milchova algoritmu*)
(**)


(* ::Section:: *)
(**)
(*3 Z\[AAcute]v\[EHacek]r*)


(* ::Text:: *)
(*Shrnut\[IAcute], odkazy na grafy a vzorce.*)


(* ::Section:: *)
(**)
(*4 Zdroje*)


(* ::Reference:: *)
(*\!\(	\^\(1\)	KOP\[CapitalAAcute]\[CapitalCHacek]EK, Ji\[RHacek]\[IAcute] . Matematick\[AAcute] anal\[YAcute]za nejen pro fyziky (II) . 4. vyd . Praha: Matfyzpress, 2015. ISBN 978-80-7378-282-5.\)*)
