google.maps.__gjsload__('overlay', '\'use strict\';function VT(a){this.j=a}Q(VT,T);ab(VT[H],function(a){"outProjection"!=a&&(a=!!(this.get("offset")&&this.get("projectionTopLeft")&&this.get("projection")&&ve(this.get("zoom"))),a==!this.get("outProjection")&&this.set("outProjection",a?this.j:null))});function WT(){}function XT(){var a=this.gm_props_;if(this[Qn]()){if(this[Rc]()){if(!a.xf&&this[Hb])this[Hb]();a.xf=!0;this.draw()}}else{if(a.xf)if(this[cd])this[cd]();else this[Ib]();a.xf=!1}}function YT(a){a.gm_props_=a.gm_props_||new WT;return a.gm_props_}function ZT(a){Vj[J](this);this.ia=O(XT,a)}Q(ZT,Vj);function $T(){}\n$T[H].Tl=function(a){var b=a[Nn](),c=YT(a),d=c.gg;c.gg=b;d&&(c=YT(a),(d=c.Ba)&&d[sn](),(d=c.Vi)&&d[sn](),a[sn](),a.set("panes",null),a.set("projection",null),R(c.aa,S[Bb]),c.aa=null,c.hb&&(c.hb.ia(),c.hb=null),Es("Ox","-p",a));if(b){c=YT(a);d=c.hb;d||(d=c.hb=new ZT(a));R(c.aa,S[Bb]);var e=c.Ba=c.Ba||new Cr,f=b[Ac];e[q]("zoom",f);e[q]("offset",f);e[q]("center",f,"projectionCenterQ");e[q]("projection",b);e[q]("projectionTopLeft",f);e=c.Vi=c.Vi||new VT(e);e[q]("zoom",f);e[q]("offset",f);e[q]("projection",\nb);e[q]("projectionTopLeft",f);a[q]("projection",e,"outProjection");a[q]("panes",f);e=O(d.Z,d);c.aa=[S[B](a,"panes_changed",e),S[B](f,"zoom_changed",e),S[B](f,"offset_changed",e),S[B](b,"projection_changed",e),S[B](f,"projectioncenterq_changed",e),S[w](b,"forceredraw",d)];d.Z();b instanceof rh&&(Bs(b,"Ox"),Ds("Ox","-p",a,!!b.ea))}};var aU=new $T;Jh.overlay=function(a){eval(a)};hg("overlay",aU);\n')