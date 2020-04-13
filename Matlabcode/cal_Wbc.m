function W_bc = cal_Wbc(h,P,area,v_drop)
% W_bc = alpha_V*A*v_drop*rho_f
% test 
132
456
v= IAPWS_SI('v_ph',P,h);
h_g = IAPWS_SI('hV_p',P,0);
h_f = IAPWS_SI('hL_p',P,0);
v_f = IAPWS_SI('vL_p',P,0);
rho = 1/v;
rho_f=1/v_f;
x = (h-h_f)/(h_g-h_f);

if x>0 && x<1
    alpha_V = (1-x)*rho/rho_f;% !?
elseif x>=1
    alpha_V = 0;
else
    alpha_V = 1;
end
W_bc = alpha_V*area*v_drop*rho_f;
end