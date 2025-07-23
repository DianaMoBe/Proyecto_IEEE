%%
% Autores       M.I. Diana Guadalupe Molina Bermúdez
% 
%               dmolina@upjr.edu.mx
%               d2103024@itcelaya.edu.mx
%
%               Dr. Juan Israel Yañez Vargas
%
%               jyanez@upjr.edu.mx
%
%               Universidad Politécnica de Juventino Rosas
%               Santa Cruz de Juventino Rosas, Guanajuato, México 
%               http://upjr.edu.mx
%
%               TecNM/Instituto Tecnológico de Celaya
%               Celaya, Guanajuato, México
%               http://celaya.tecnm.mx
%
% Fecha         22 de Julio de 2025
% Versión       1.0

function norm_data=normalizar_vector(datos)
    minVal=min(datos);
    maxVal=max(datos);
    
    norm_data=(datos-minVal)/(maxVal-minVal);

end
