function varargout = HVAC(varargin)
% HVAC MATLAB code for HVAC.fig
%      HVAC, by itself, creates a new HVAC or raises the existing
%      singleton*.
%
%      H = HVAC returns the handle to a new HVAC or the handle to
%      the existing singleton*.
%
%      HVAC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HVAC.M with the given input arguments.
%
%      HVAC('Property','Value',...) creates a new HVAC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before HVAC_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to HVAC_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help HVAC

% Last Modified by GUIDE v2.5 18-Dec-2021 20:46:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @HVAC_OpeningFcn, ...
                   'gui_OutputFcn',  @HVAC_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT
end

% --- Executes just before HVAC is made visible.
function HVAC_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to HVAC (see VARARGIN)

% Choose default command line output for HVAC
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes HVAC wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = HVAC_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end


% --- Executes on button press in Electrical.
function Electrical_Callback(hObject, eventdata, handles)
% hObject    handle to Electrical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure
image(imread('WhatsApp Image 2021-12-15 at 10.25.08 AM.jpeg'));
end


% --- Executes on button press in Humane.
function Humane_Callback(hObject, eventdata, handles)
% hObject    handle to Humane (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

end


% --- Executes on button press in COVID.
function COVID_Callback(hObject, eventdata, handles)
% hObject    handle to COVID (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

end


% --- Executes on button press in Infiltrate.
function Infiltrate_Callback(hObject, eventdata, handles)
% hObject    handle to Infiltrate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

end


% --- Executes on selection change in Citymenu.
function Citymenu_Callback(hObject, eventdata, handles)
% hObject    handle to Citymenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Citymenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Citymenu
contents=get(hObject, 'Value');
set(handles.Outer_Temp, 'String', num2str(contents));
end

% --- Executes during object creation, after setting all properties.
function Citymenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Citymenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end



function Inlet_Temp_Callback(hObject, eventdata, handles)
% hObject    handle to Inlet_Temp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Inlet_Temp as text
%        str2double(get(hObject,'String')) returns contents of Inlet_Temp as a double

end

% --- Executes during object creation, after setting all properties.
function Inlet_Temp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Inlet_Temp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


% --- Executes on button press in Conduction.
function Conduction_Callback(hObject, eventdata, handles)
% hObject    handle to Conduction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

end


% --- Executes on button press in Solar_Load.
function Solar_Load_Callback(hObject, eventdata, handles)
% hObject    handle to Solar_Load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end


% --- Executes on button press in Opaque_CLTD.
function Opaque_CLTD_Callback(hObject, eventdata, handles)
% hObject    handle to Opaque_CLTD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

end


% --- Executes on button press in Minerva.
function Minerva_Callback(hObject, eventdata, handles)
% hObject    handle to Minerva (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

end
