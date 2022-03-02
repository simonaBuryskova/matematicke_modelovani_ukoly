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
(*Show[castecnesouctyPlot, limitaPuvodni,%21,AxesLabel->{HoldForm[\!\(TraditionalForm\`\**)
(*StyleBox["n", "TI"]\)],HoldForm[\!\(TraditionalForm\`*)
(*SubscriptBox[*)
(*StyleBox["a", "TI"], *)
(*StyleBox["n", "TI"]]\)]},PlotLabel->HoldForm["Graf 1: Konvergence posl.\[CHacek]\[AAcute]ste\[CHacek]n\[YAcute]ch sou\[CHacek]t\[URing]"],LabelStyle->{GrayLevel[0]}]*)
(**)


(* ::Section:: *)
(**)
(*2 P\[RHacek]erovn\[AAcute]n\[IAcute] \[RHacek]ady pomoc\[IAcute] Schl\[ODoubleDot]milchova algoritmu*)


(* ::Text:: *)
(*Abychom uk\[AAcute]zali, \[ZHacek]e na\[SHacek]i neabsolutn\[EHacek] konvergentn\[IAcute] lze p\[RHacek]erovnat tak, \[ZHacek]e sou\[CHacek]et p\[RHacek]erovnan\[EAcute] \[RHacek]ady bude jin\[YAcute] ne\[ZHacek] sou\[CHacek]et nep\[RHacek]erovnan\[EAcute], vyu\[ZHacek]ijeme Schl\[ODoubleDot]milchovu v\[EHacek]tu\^\(2\) , kter\[AAcute] je speci\[AAcute]ln\[IAcute] variantou Riemannovy v\[EHacek]ty a zab\[YAcute]v\[AAcute] se p\[RHacek]erovn\[AAcute]n\[IAcute]m alternuj\[IAcute]c\[IAcute] \[RHacek]ady.*)
(**)


(* ::Text:: *)
(*V\[EHacek]ta (Schl\[ODoubleDot]milch(1873)): Nech\[THacek] \!\(TraditionalForm\`\**)
(*StyleBox["f", "TI"]\) je klesaj\[IAcute]c\[IAcute] funkce takov\[AAcute], \[ZHacek]e \!\(TraditionalForm\`\**)
(*UnderscriptBox["lim", *)
(*RowBox[{*)
(*StyleBox["n", "TI"], "->", "\[Infinity]"}],*)
(*LimitsPositioning->True]\**)
(*StyleBox["f", "TI"] \((\**)
(*StyleBox["n", "TI"])\) == 0\) a nech\[THacek] \!\(TraditionalForm\`\**)
(*StyleBox["K", "TI"]\) je definov\[AAcute]no jako: \!\(TraditionalForm\`\**)
(*StyleBox["K", "TI"]\**)
(*SubscriptBox["==", *)
(*StyleBox[*)
(*RowBox[{"d", "e", "f"}], "TI"]]\**)
(*UnderscriptBox["lim", *)
(*RowBox[{*)
(*StyleBox["n", "TI"], "->", "\[Infinity]"}],*)
(*LimitsPositioning->True]\**)
(*StyleBox["f", "TI"](\**)
(*StyleBox["n", "TI"]) . \) Nech\[THacek] alternuj\[IAcute]c\[IAcute] \[RHacek]ada \!\(TraditionalForm\`\**)
(*UnderoverscriptBox["\[Sum]", *)
(*RowBox[{*)
(*StyleBox["n", "TI"], "==", "0"}], "\[Infinity]",*)
(*LimitsPositioning->True]\**)
(*SuperscriptBox[*)
(*RowBox[{"(", *)
(*RowBox[{"-", "1"}], ")"}], *)
(*StyleBox["n", "TI"]] \**)
(*StyleBox["f", "TI"] \((\**)
(*StyleBox["n", "TI"])\)\) je konvergentn\[IAcute] a jej\[IAcute] sou\[CHacek]et budeme zna\[CHacek]it \!\(TraditionalForm\`\**)
(*StyleBox["s", "TI"]\) . P\[RHacek]erovnejme tuto \[RHacek]adu podle n\[AAcute]sleduj\[IAcute]c\[IAcute]ho postupu:*)
(*Na prvn\[IAcute]ch \!\(TraditionalForm\`\**)
(*StyleBox["p", "TI"]\) m\[IAcute]st p\[RHacek]erovnan\[EAcute] \[RHacek]ady dejme prvn\[IAcute]ch \!\(TraditionalForm\`\**)
(*StyleBox["p", "TI"]\) kladn\[YAcute]ch \[CHacek]len\[URing] \[RHacek]ady p\[URing]vodn\[IAcute], na dal\[SHacek]\[IAcute]ch \!\(TraditionalForm\`\**)
(*StyleBox["q", "TI"]\) m\[IAcute]st dejme prvn\[IAcute]ch \!\(TraditionalForm\`\**)
(*StyleBox["q", "TI"]\) z\[AAcute]porn\[YAcute]ch \[CHacek]len\[URing] p\[URing]vodn\[IAcute] \[RHacek]ady a takto pokra\[CHacek]ujme d\[AAcute]l. V\[ZHacek]dy vezm\[EHacek]me dal\[SHacek]\[IAcute]ch \!\(TraditionalForm\`\**)
(*StyleBox["p", "TI"]\) kladn\[YAcute]ch \[CHacek]len\[URing] a p\[RHacek]idejme je do p\[RHacek]erovnan\[EAcute] \[RHacek]ady a stejn\[EHacek] tak dal\[SHacek]\[IAcute]ch \!\(TraditionalForm\`\**)
(*StyleBox["q", "TI"]\) z\[AAcute]porn\[YAcute]ch \[CHacek]len\[URing].*)
(*Pak t\[IAcute]mto postupem p\[RHacek]erovnan\[AAcute] \[RHacek]ada konverguje a jej\[IAcute]m sou\[CHacek]tem je \!\(TraditionalForm\`\**)
(*StyleBox["S", "TI"] == \**)
(*StyleBox["s", "TI"] + *)
(*\*FractionBox[\(1\), \(2\)] \**)
(*StyleBox["K", "TI"] ln \**)
(*FractionBox[*)
(*StyleBox["p", "TI"], *)
(*StyleBox["q", "TI"]]\). *)


(* ::Text:: *)
(*V na\[SHacek]em p\[RHacek]\[IAcute]pad\[EHacek] je zjevn\[EHacek] \!\(TraditionalForm\`\**)
(*StyleBox["K", "TI"] == 1\) a zvol\[IAcute]me za parametry \!\(TraditionalForm\`\**)
(*StyleBox["p", "TI"] == 3\) a \!\(TraditionalForm\`\**)
(*StyleBox["q", "TI"] == 2\). Dle V\[EHacek]ty z\[IAcute]sk\[AAcute]me t\[IAcute]mto p\[RHacek]erovn\[AAcute]n\[IAcute]m \[RHacek]adu se sou\[CHacek]tem \!\(TraditionalForm\`\**)
(*StyleBox["S", "TI"] == ln  2 + *)
(*\*FractionBox[\(1\), \(2\)] ln *)
(*\*FractionBox[\(3\), \(2\)] == 0.8958797346140275\).*)
(*P\[RHacek]erovn\[AAcute]n\[IAcute] provedeme n\[AAcute]sleduj\[IAcute]c\[IAcute] sekvenc\[IAcute] p\[RHacek]\[IAcute]kaz\[URing]:*)


(* ::Input:: *)
(*K = 1;*)
(*p = 3; q = 2; (* volba parametr\[URing]*)*)
(*kladne = Select[cleny, #>0&]; (*v\[YAcute]b\[EHacek]r kladn\[YAcute]ch/z\[AAcute]porn\[YAcute]ch \[CHacek]len\[URing]*)*)
(*zaporne = Select[cleny, #<0&];*)
(*kladneSkupiny = Partition[kladne,p]; (*seskupen\[IAcute] kladn\[YAcute]ch/z\[AAcute]porn\[YAcute]ch \[CHacek]len\[URing] do p- resp. q-\[CHacek]lenn\[YAcute]ch skupin*)*)
(*zaporneSkupiny =Partition[zaporne,q];*)
(*prerovnani= Table[{kladneSkupiny[[i]], zaporneSkupiny[[i]]}, {i, 1,16}]; (*PRO\[CapitalCHacek] 16? proto\[ZHacek]e 100/2=50,50/3=16*)*)
(*prerovnani = Flatten[prerovnani]; (*odstran\[EHacek]n\[IAcute] z\[AAcute]vorek*)*)
(*castecneSouctyPrerovnane = Accumulate[prerovnani]; (*posloupnost \[CHacek]\[AAcute]ste\[CHacek]n\[YAcute]ch sou\[CHacek]t\[URing] p\[RHacek]erovnan\[EAcute] \[RHacek]ady*)*)
(**)


(* ::Text:: *)
(*Nyn\[IAcute] si vypi\[SHacek]me, jak vypad\[AAcute] \[RHacek]ada po p\[RHacek]erovn\[AAcute]n\[IAcute]:*)


(* ::Input:: *)
(*Short[prerovnani,3]*)


(* ::Text:: *)
(*Konvergenci posloupnosti \[CHacek]\[AAcute]ste\[CHacek]n\[YAcute]ch sou\[CHacek]t\[URing] k \[CHacek]\[IAcute]slu \!\(TraditionalForm\`\**)
(*StyleBox["S", "TI"]\) zn\[AAcute]zor\[NHacek]uje Graf 2:*)


(* ::Input:: *)
(*(*PRO\[CapitalCHacek] TO VYKRESL\[CapitalIAcute] I DATA NEP\[CapitalRHacek]EROVNAN\[CapitalEAcute]???*)*)
(*castecneSouctyPrerovnanePlot = ListPlot[castecneSouctyPrerovnane];*)
(*limita= Plot[Log[2] + 1/2*Log[p/q], {X, 1, Length[castecneSouctyPrerovnane]}];*)
(*Show[limita, castecneSouctyPrerovnanePlot,%21,AxesLabel->{HoldForm[\!\(TraditionalForm\`\**)
(*StyleBox["n", "TI"]\)],HoldForm[\!\(TraditionalForm\`*)
(*SubscriptBox[*)
(*StyleBox["a", "TI"], *)
(*StyleBox["n", "TI"]]\)]},PlotLabel->HoldForm["Graf 2: Konvergence posl.\[CHacek]\[AAcute]ste\[CHacek]n\[YAcute]ch sou\[CHacek]t\[URing] p\[RHacek]erovnan\[EAcute] \[RHacek]ady"],LabelStyle->{GrayLevel[0]}]*)


(* ::InheritFromParent:: *)
(*Graphics[{{{{}, {}, Annotation[{RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], Opacity[1.], Line[CompressedData["*)
(*1:eJxTTMoPSmViYGAwAWIQbbTgxAZGhg/2TApav7hXv7GPOP+k7nD6Hzjfvr5h*)
(*2aF0FgcYX2Vqak/QWwE4P9NagnuDiTicr6nTdrk1RhbOz13L+v0rixKcr/aW*)
(*T32+kiqcf/20coNAswacf8xf7N/ey9pwvmjN+XmJr/Xg/PXKXlueKRnC+c13*)
(*+1dN32wE53/LdNmcZmMC5z89Wndh5jNTOJ+lTOa/e4k5nD//q71TlLIlnH/T*)
(*/dL0rlNWcL7zu+P/TENt4HytFOcqV0Y7ON9RT4n9wgR7OP9VsnPI/QUOcD6z*)
(*lO661FJHON+k6sSEldZOiPA8tKx2vpAznK+zxexz0G0Ev5n/X6HoAhc4f0YQ*)
(*x+/OUlc4/6j9EZ49Nm5w/gaRwxoLRNzh/NdBP30nv0Dw7awf/nZe5wHn+3Pz*)
(*bFnW4gnnV7S++HLMxwvO/5jxx+6bgDecr2ESPPn6UwS/fGV0QdkaHzi/hW15*)
(*+PFmXzh/Je+S41d9/OB82bobDp8F/eH8gGv+Rw49R/B9c2xeLA8PgPMDE4uK*)
(*jx9G8P9yuTS/0w2E87d25oV/mYDg+9TsMgj+g+C/d44/NyEhCM63OjD/w9VD*)
(*CH7KBkaJEt1gOH9W6R7mjxMQ/J6VNXUVJxD8+rs2P///R/ABQnhe0g==*)
(*"]]}, "Charting`Private`Tag$34907#1"]}, {}}, {{}, {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.011000000000000001`], AbsoluteThickness[1.6], Point[CompressedData["*)
(*1:eJxVkH0s1HEcx+/c4VaJMFMzkVyXmTzkIeTeXOfZOXekWSoXPedhozYPo6hl*)
(*icpCrlSj0iZ5+COpCbPLlTystGopY7I8xEyFZSq+nz/6brffXvt8Xq/vd2et*)
(*SlIk6HA4HPnf37/vypkW///lIGr5/GAsQP6Ff2eOsRFj2jfFuuXzjbE53GIq*)
(*XWMqJxlb4JK2rEBbRvtW4Ko/VwoNZhhvwsPBwzO/Or4z3sx4jLEQhoLPkRu9*)
(*qCeCkx3ntG/sFGM7rNJLqblyi/r2GHxfazu9mnoOcHXgZ0jjxhk7QhTU/fWk*)
(*EfWckB8XGXi+hPadcdtk5HXDAvVdYDCl9iqsp/3tjKnniqheM7n3/ARjN4QM*)
(*T6urRNRzh+5FHWcrCfU8UJzo1crLpN4OzL+9Izw2RD1P6Py0da8Zo54XFt49*)
(*8B8bon1vqEeKR+e6qL8TQlNZr3oPzX3Q1zKX7s8jX4zqrgpJ7SAx0PkhOf5p*)
(*A9vPAS43Tybnp1PPF1/uNTxPE9PcFyWmhaeGN5DvB83v68mHPjDO8YNQIO9L*)
(*KaL7JXhwu8a4ZSfr5UhQVqTmPrSn+S7G5O9Cu36/3qc31JdCVZ12PzOV7pdC*)
(*xA8vMjCk9/nD3WRfhYUlzf2xlJeeUOhJfgCK72oTc3qoH4Ci2sdXPfbT/YF4*)
(*Ed14bt0Y+YGQBXeHZxnTPAhnsri5dVLyg6CMzzb4/Yr6wUg9wXXgy8gPRmRq*)
(*9to1XeSHwObIs4ElAc1DcDR7vaJPRn4oAvy05mZa6odCJqoq76H/mxOGZrfO*)
(*WcdG8sPwaGCpfgOX5jLoukTpJ+8mXwaB50Gbag31w5H20c1uyIX8cPDzmkal*)
(*FeTLccAkYyBxge1Djgv5A/yRvdSTI/qlk7i0g3GrHEu2trzmreRH4HW/avRE*)
(*AWNEQNGV1tY0S34EHHKHbySpyI9A4bBksaed3qeAtSZo27wV+QpsmX1Sx8+i*)
(*9yoQbFU/opkiX4H2UlGsz2HylVDdPLsoaaP3K9G8yOPFrCdfCUueJuRaEuNW*)
(*JcpnciWp4+RHrvDxCfEf7HZ8bw==*)
(*"]]}, {{}, {}}}, {{{}, {}}, {}}}, AspectRatio -> GoldenRatio^(-1), Axes -> {True, True}, AxesLabel -> {HoldForm[$CellContext`n], HoldForm[Subscript[$CellContext`a, $CellContext`n]]}, AxesOrigin -> {0, 0}, DisplayFunction -> Identity, Frame -> {{False, False}, {False, False}}, FrameLabel -> {{None, None}, {None, None}}, FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, GridLines -> {None, None}, GridLinesStyle -> Directive[GrayLevel[0.5, 0.4]], ImagePadding -> All, LabelStyle -> {GrayLevel[0]}, Method -> {"DefaultBoundaryStyle" -> Automatic, "DefaultGraphicsInteraction" -> {"Version" -> 1.2, "TrackMousePosition" -> {True, False}, "Effects" -> {"Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, "Droplines" -> {"freeformCursorMode" -> True, "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> AbsolutePointSize[6], "ScalingFunctions" -> None, "CoordinatesToolOptions" -> {"DisplayFunction" -> ({(Identity[#]& )[Part[#, 1]], (Identity[#]& )[Part[#, 2]]}& ), "CopiedValueFunction" -> ({(Identity[#]& )[Part[#, 1]], (Identity[#]& )[Part[#, 2]]}& )}}, PlotLabel -> HoldForm["Graf 2: Konvergence posl.\[CHacek]\[AAcute]ste\[CHacek]n\[YAcute]ch sou\[CHacek]t\[URing] p\[RHacek]erovnan\[EAcute] \[RHacek]ady"], PlotRange -> {{1, 80}, {0., 1.791759469228055}}, PlotRangeClipping -> True, PlotRangePadding -> {{Scaled[0.02], Scaled[0.02]}, {Scaled[0.05], Scaled[0.05]}}, Ticks -> {Automatic, Automatic}]*)


(* ::Section:: *)
(*3 Z\[AAcute]v\[EHacek]r*)


(* ::Text:: *)
(*Byla zkoum\[AAcute]na neabsolutn\[EHacek] konvergentn\[IAcute] \[RHacek]ada \!\(TraditionalForm\`\**)
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
(*StyleBox["k", "TI"]] == ln  2\). Jej\[IAcute]m p\[RHacek]erovn\[AAcute]n\[IAcute]m dle Schl\[ODoubleDot]milchovy v\[EHacek]ty jsme z\[IAcute]skali \[RHacek]adu o sou\[CHacek]tu \!\(TraditionalForm\`\**)
(*StyleBox["S", "TI"] == 0.8958797346140275 > ln  2\), co\[ZHacek] demonstruje fakt, \[ZHacek]e po p\[RHacek]erovn\[AAcute]n\[IAcute] \[CHacek]len\[URing] nemus\[IAcute] m\[IAcute]t \[RHacek]ada stejn\[YAcute] sou\[CHacek]et jako p\[RHacek]ed p\[RHacek]erovn\[AAcute]n\[IAcute]m. V\[YAcute]sledky byly graficky zn\[AAcute]zorn\[EHacek]ny v Grafu 1 a 2.*)
(**)


(* ::Section:: *)
(*4 Zdroje*)


(* ::Reference:: *)
(*\!\(	\^\(1\)	KOP\[CapitalAAcute]\[CapitalCHacek]EK, Ji\[RHacek]\[IAcute] . Matematick\[AAcute] anal\[YAcute]za nejen pro fyziky (II) . 4. vyd . Praha: Matfyzpress, 2015. ISBN 978-80-7378-282-5.\)*)


(* ::Reference:: *)
(*\!\(	\^\(2\)	PR\[CapitalURing]\[CapitalSHacek]A V ., T\[CapitalURing]MA K . Rearrangement of non-absolute convergent series - how to prove that 1 = 2. MFF UK, 2022.\)*)
