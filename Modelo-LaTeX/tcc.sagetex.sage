## -*- encoding: utf-8 -*-
## This file (tcc.sagetex.sage) was *autogenerated* from tcc.tex with sagetex.sty version 2020/08/12 v3.5.
import sagetex
_st_ = sagetex.SageTeXProcessor('tcc', version='2020/08/12 v3.5', version_check=True)
_st_.useimagemagick = True
_st_.current_tex_line = 261
_st_.blockbegin()
try:
 t = var('t')
 z = var('z')
 A=1
 c=3e8
 w=4
 k=w/c
 dk=0.5
 dw=0.5
 
 f1(t,z)= A*exp(I*((w-dw)*t-(k-dk)*z))
 f2(t,z)= A*exp(I*((w+dw)*t-(k+dk)*z))
 f3(t,z)= 2*A*cos(dw*t-dk*z)*exp(I*(w*t-k*z))
 f4(t,z)=2*A*cos(dw*t-dk*z)
 
 D = plot(f4(t,0), t, -5, 5, linestyle="--", thickness=1, color='black') + plot(-f4(t,0), t, -5, 5, linestyle="--", thickness=1, color='black')
 
 E=plot(A, t, -5, 5, linestyle="--", thickness=1, color='black') + plot(-A, t, -5, 5, linestyle="--", thickness=1, color='black')
 
 O = plot(real_part(f1(t,0)),t,-5,5,frame=true,figsize=(6,3),thickness=1, color='blue',axes=False) + E
 
 B = plot(real_part(f2(t,0)),t,-5,5,frame=true,figsize=(6,3),thickness=1, color='red',axes=False) + E
 
 C = plot(real_part(f3(t,0)),t,-5,5,frame=true,figsize=(6,3),thickness=1, color='green',axes=False) + D
 
 
 O.set_axes_range(-5,5,-3,3)
 B.set_axes_range(-5,5,-3,3)
 C.set_axes_range(-5,5,-3,3)
 
except:
 _st_.goboom(291)
_st_.blockend()
try:
 _st_.current_tex_line = 297
 _st_.plot(0, format='notprovided', _p_=O)
except:
 _st_.goboom(297)
try:
 _st_.current_tex_line = 298
 _st_.plot(1, format='notprovided', _p_=B)
except:
 _st_.goboom(298)
try:
 _st_.current_tex_line = 299
 _st_.plot(2, format='notprovided', _p_=C)
except:
 _st_.goboom(299)
_st_.current_tex_line = 384
_st_.blockbegin()
try:
 t = var('t')
 k11 = var('k11')
 Tp=1
 w=5
 c=3e8
 kk=w/c
 k1=w/kk
 z=0.000001
 f(t,k11)= (Tp/sqrt(Tp^2 + I*2*k11*z))*exp(-(t)^2/(Tp^2 + I*2*k11*z))*exp(I*(w*(t+k1*z)-kk*z))
 
 f1 = real_part(f)
 
 A = plot(f1(t,0),t,-10,10,frame=true,figsize=(6,3),thickness=1, color='green',axes=False)
 B = plot(f1(t,2e6),t,-10,10,frame=true,figsize=(6,3),thickness=1, color='red',axes=False)
 C = plot(f1(t,-2e6),t,-10,10,frame=true,figsize=(6,3),thickness=1, color='blue',axes=False)
 
 A.set_axes_range(-10,10,-1.2,1.2)
 B.set_axes_range(-10,10,-1.2,1.2)
 C.set_axes_range(-10,10,-1.2,1.2)
 
 D = graphics_array([[A],[B],[C]])
 
 
except:
 _st_.goboom(408)
_st_.blockend()
try:
 _st_.current_tex_line = 416
 _st_.plot(3, format='notprovided', _p_=A)
except:
 _st_.goboom(416)
try:
 _st_.current_tex_line = 417
 _st_.plot(4, format='notprovided', _p_=B)
except:
 _st_.goboom(417)
try:
 _st_.current_tex_line = 418
 _st_.plot(5, format='notprovided', _p_=C)
except:
 _st_.goboom(418)
_st_.current_tex_line = 468
_st_.blockbegin()
try:
 Tp=1
 c=3e8
 k1=1/c
 
 f(t,z) = exp(-(k1*z-t)^2/Tp^2)
 f2(t,z) = exp(-(t)^2/Tp^2)
 
 A=contour_plot(f(t,z),(t,-2,4),(z,0,10e8),frame=true,thickness=1, color='green',axes=False, colorbar=true,cmap='jet',plot_points=150,contours=100,aspect_ratio='automatic')
 p = A[0]
 opt = p.options()
 print(opt)
 opt['colorbar_options']
 opt['colorbar_options']['label'] = '$\mathcal{E}(z,t)$'
 p.set_options(opt)
 A[0] = p
 B=contour_plot(f2(t,z),(t,-2,4),(z,0,10e8),frame=true,thickness=1, color='green',axes=False, colorbar=true,cmap='jet',plot_points=150,contours=100,aspect_ratio='automatic')
 p = B[0]
 opt = p.options()
 print(opt)
 opt['colorbar_options']
 opt['colorbar_options']['label'] = '$\mathcal{E}(\eta,\\tau)$'
 p.set_options(opt)
 B[0] = p
 A.show()
 
except:
 _st_.goboom(494)
_st_.blockend()
try:
 _st_.current_tex_line = 503
 _st_.plot(6, format='notprovided', _p_=A, axes_labels=("$t$ (s)","$z$ (m)"), figsize=(5,4))
except:
 _st_.goboom(503)
try:
 _st_.current_tex_line = 503
 _st_.plot(7, format='notprovided', _p_=B, axes_labels=("$\\tau$ (s)","$\eta $ (m)"), figsize=(5,4))
except:
 _st_.goboom(503)
_st_.current_tex_line = 997
_st_.blockbegin()
try:
 cn(t) = exp(-((2*pi*5)/2)*t)
except:
 _st_.goboom(999)
_st_.blockend()
try:
 _st_.current_tex_line = 1004
 _st_.plot(8, format='notprovided', _p_=plot(cn(t),t,0,0.5),frame=true,figsize = (4,4))
except:
 _st_.goboom(1004)
_st_.endofdoc()
