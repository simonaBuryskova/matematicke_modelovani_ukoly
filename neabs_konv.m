(* ::Package:: *)

(* ::Input:: *)
(*rada = Sum[(-1)^(k-1)/k, {k,1,Infinity}]*)


(* ::Input:: *)
(*radapredpis = HoldForm[Sum[(-1)^(k-1)/k, {k,1,Infinity}]]*)


(* ::Input:: *)
(*rada[]*)


(* ::Input:: *)
(*rada_predpis[]*)


(* ::Input:: *)
(*rada_predpis[]*)


(* ::Input:: *)
(*rada_predpis*)


(* ::Input:: *)
(*radapredpis*)


(* ::Input:: *)
(*Table[radapredpis]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*cleny = Table[(-1)^(k-1)/k, {k,1,100}]*)


(* ::Input:: *)
(*castecnesoucty = Accumulate[cleny]*)


(* ::Input:: *)
(*kladne = Select[cleny, #>0&]*)


(* ::Input:: *)
(*zaporne = Select[cleny, #<0&]*)


(* ::Input:: *)
(*K = Limit[ n/n, n->Infinity]*)


(* ::Input:: *)
(*p = 3*)
(*q = 2*)
(**)


(* ::Input:: *)
(*kladneSkupiny = Partition[kladne,p]*)


(* ::Input:: *)
(*zaporneSkupiny =Partition[zaporne,q]*)


(* ::Input:: *)
(*prerovnani= Table[{kladneSkupiny[[i]], zaporneSkupiny[[i]]}, {i, 1,16}]*)


(* ::Input:: *)
(*prerovnani = Flatten[prerovnani]*)


(* ::Input:: *)
(*castecneSouctyPrerovnane = Accumulate[prerovnani]*)


(* ::Input:: *)
(**)
(**)
(**)
(*castecneSouctyPrerovnanePlot = ListPlot[*)
(*castecneSouctyPrerovnane,*)
(*PlotLabel-> StringForm["Partial sums for REARRANGED series \!\(\*UnderoverscriptBox[\(\[Sum]\), \(k = 1\), \(\[Infinity]\)]\)\!\(\*FractionBox[SuperscriptBox[\((\(-1\))\), \(k - 1\)], \(k\)]\)\n p positive terms followed by q negative terms\n parameter values (p,q) = (``, ``)", p, q], AxesLabel->{"N", "Partial sum"}*)
(*];*)
(*limita= Plot[Log[2] + 1/2*Log[p/q], {x, 1, Length[castecneSouctyPrerovnane]}];*)
(*Show[limita, castecneSouctyPrerovnanePlot]*)


(* ::Input:: *)
(*Show[%30,AxesLabel->{HoldForm[n],HoldForm[\[CHacek]\[AAcute]ste\[CHacek]n\[EAcute] sou\[CHacek]ty]},PlotLabel->HoldForm[Konvergence posloupnosti \[CHacek]\[AAcute]ste\[CHacek]n\[YAcute]ch sou\[CHacek]t\[URing] p\[RHacek]erovnan\[EAcute] \[RHacek]ady],LabelStyle->{FontFamily->"Cambria Math",12,GrayLevel[0]}]*)


(* ::Input:: *)
(*Show[%41,PlotLabel->HoldForm[Konvergence posloupnosti \[CHacek]\[AAcute]ste\[CHacek]n\[YAcute]ch sou\[CHacek]t\[URing] p\[RHacek]erovnan\[EAcute] \[RHacek]ady],LabelStyle->{GrayLevel[0]}]*)


(* ::Input:: *)
(**)
(*castecnesouctyPlot = ListPlot[castecnesoucty];*)
(*limitaPuvodni= Plot[Log[2], {x, 1, 100}];*)
(*Show[castecnesouctyPlot, limitaPuvodni]*)


(* ::Input:: *)
(*Show[%40,AxesLabel->{HoldForm[n],HoldForm[s_n]},PlotLabel->HoldForm[Konvergence posloupnosti \[CHacek]\[AAcute]ste\[CHacek]n\[YAcute]ch sou\[CHacek]t\[URing] p\[URing]vodn\[IAcute] \[RHacek]ady],LabelStyle->{FontFamily->"Cambria Math",GrayLevel[0]}]*)
