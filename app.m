function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 06-Jun-2018 14:36:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;
handles.back = importdata('game1.jpg');
handles.front = importdata('smile.jpg');
set(handles.pushbutton1,'CDATA',handles.back);
set(handles.pushbutton2,'CDATA',handles.back);
set(handles.pushbutton3,'CDATA',handles.back);
set(handles.pushbutton4,'CDATA',handles.back);
set(handles.pushbutton5,'CDATA',handles.back);
set(handles.pushbutton6,'CDATA',handles.back);
set(handles.pushbutton7,'CDATA',handles.back);
set(handles.pushbutton8,'CDATA',handles.back);
set(handles.pushbutton9,'CDATA',handles.back);
set(handles.pushbutton10,'CDATA',handles.back);
set(handles.pushbutton11,'CDATA',handles.back);
set(handles.pushbutton12,'CDATA',handles.back);


handles.num = 0;
handles.object = hObject;
% Update handles structures
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y;
global fs;
disp(handles.num);
if handles.num == 0
    set(hObject,'CDATA',handles.front);
    [y, fs] = audioread('002.mp3',[1 150000]);
    handles.num = 1;
    p=audioplayer(y,fs);
    playblocking(p);
    %handles.array1 = y;
    %handles.array2 = fs;
    handles.Object=hObject;
else
    set(hObject,'CDATA',handles.front);
    [y1, fs1] = audioread('002.mp3',[1 150000]);
    handles.num = 0;
    p=audioplayer(y1,fs1);
    playblocking(p);
    %y=handles.array1;
    %fs=handles.array2;
    notequal=1;
    if y==y1
    	notequal=0;
    end
    
    disp(notequal);
    if notequal==1
        set(hObject,'CDATA',handles.back);
        set(handles.Object,'CDATA',handles.back);
    end
end

guidata(hObject, handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y;
global fs;
disp(handles.num);
if handles.num == 0
    set(hObject,'CDATA',handles.front);
    [y, fs] = audioread('001.mp3',[1 150000]);
    handles.num = 1;
    p=audioplayer(y,fs);
    playblocking(p);
    %handles.array1 = y;
    %handles.array2 = fs;
    handles.Object=hObject;
else
    set(hObject,'CDATA',handles.front);
    [y1, fs1] = audioread('001.mp3',[1 150000]);
    handles.num = 0;
    p=audioplayer(y1,fs1);
    playblocking(p);
    %y=handles.array1;
    %fs=handles.array2;
    notequal=1;
    if y==y1
    	notequal=0;
    end
    
    disp(notequal);
    if notequal==1
        set(hObject,'CDATA',handles.back);
        set(handles.Object,'CDATA',handles.back);
    end
end
guidata(hObject, handles);
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y;
global fs;
disp(handles.num);
if handles.num == 0
    set(hObject,'CDATA',handles.front);
    [y, fs] = audioread('002.mp3',[1 150000]);
    handles.num = 1;
    p=audioplayer(y,fs);
    playblocking(p);
    %handles.array1 = y;
    %handles.array2 = fs;
    handles.Object=hObject;
else
    set(hObject,'CDATA',handles.front);
    [y1, fs1] = audioread('002.mp3',[1 150000]);
    handles.num = 0;
    p=audioplayer(y1,fs1);
    playblocking(p);
    %y=handles.array1;
    %fs=handles.array2;
    notequal=1;
    if y==y1
    	notequal=0;
    end
    
    disp(notequal);
    if notequal==1
        set(hObject,'CDATA',handles.back);
        set(handles.Object,'CDATA',handles.back);
    end
end

guidata(hObject, handles);

function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y;
global fs;
disp(handles.num);
if handles.num == 0
    set(hObject,'CDATA',handles.front);
    [y, fs] = audioread('001.mp3',[1 150000]);
    handles.num = 1;
    p=audioplayer(y,fs);
    playblocking(p);
    %handles.array1 = y;
    %handles.array2 = fs;
    handles.Object=hObject;
else
    set(hObject,'CDATA',handles.front);
    [y1, fs1] = audioread('001.mp3',[1 150000]);
    handles.num = 0;
    p=audioplayer(y1,fs1);
    playblocking(p);
    %y=handles.array1;
    %fs=handles.array2;
    notequal=1;
    if y==y1
    	notequal=0;
    end
    
    disp(notequal);
    if notequal==1
        set(hObject,'CDATA',handles.back);
        set(handles.Object,'CDATA',handles.back);
    end
end

guidata(hObject, handles);

function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y;
global fs;
disp(handles.num);
if handles.num == 0
    set(hObject,'CDATA',handles.front);
    [y, fs] = audioread('003.mp3',[1 150000]);
    handles.num = 1;
    p=audioplayer(y,fs);
    playblocking(p);
    %handles.array1 = y;
    %handles.array2 = fs;
    handles.Object=hObject;
else
    set(hObject,'CDATA',handles.front);
    [y1, fs1] = audioread('003.mp3',[1 150000]);
    handles.num = 0;
    p=audioplayer(y1,fs1);
    playblocking(p);
    %y=handles.array1;
    %fs=handles.array2;
    notequal=1;
    if y==y1
    	notequal=0;
    end
    
    disp(notequal);
    if notequal==1
        set(hObject,'CDATA',handles.back);
        set(handles.Object,'CDATA',handles.back);
    end
end

guidata(hObject, handles);
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y;
global fs;
disp(handles.num);
if handles.num == 0
    set(hObject,'CDATA',handles.front);
    [y, fs] = audioread('006.mp3',[1 150000]);
    handles.num = 1;
    p=audioplayer(y,fs);
    playblocking(p);
    %handles.array1 = y;
    %handles.array2 = fs;
    handles.Object=hObject;
else
    set(hObject,'CDATA',handles.front);
    [y1, fs1] = audioread('006.mp3',[1 150000]);
    handles.num = 0;
    p=audioplayer(y1,fs1);
    playblocking(p);
    %y=handles.array1;
    %fs=handles.array2;
    notequal=1;
    if y==y1
    	notequal=0;
    end
    
    disp(notequal);
    if notequal==1
        set(hObject,'CDATA',handles.back);
        set(handles.Object,'CDATA',handles.back);
    end
end

guidata(hObject, handles);
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y;
global fs;
disp(handles.num);
if handles.num == 0
    set(hObject,'CDATA',handles.front);
    [y, fs] = audioread('006.mp3',[1 150000]);
    handles.num = 1;
    p=audioplayer(y,fs);
    playblocking(p);
    %handles.array1 = y;
    %handles.array2 = fs;
    handles.Object=hObject;
else
    set(hObject,'CDATA',handles.front);
    [y1, fs1] = audioread('006.mp3',[1 150000]);
    handles.num = 0;
    p=audioplayer(y1,fs1);
    playblocking(p);
    %y=handles.array1;
    %fs=handles.array2;
    notequal=1;
    if y==y1
    	notequal=0;
    end
    
    disp(notequal);
    if notequal==1
        set(hObject,'CDATA',handles.back);
        set(handles.Object,'CDATA',handles.back);
    end
end

guidata(hObject, handles);
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y;
global fs;
disp(handles.num);
if handles.num == 0
    set(hObject,'CDATA',handles.front);
    [y, fs] = audioread('004.mp3',[1 150000]);
    handles.num = 1;
    p=audioplayer(y,fs);
    playblocking(p);
    %handles.array1 = y;
    %handles.array2 = fs;
    handles.Object=hObject;
else
    set(hObject,'CDATA',handles.front);
    [y1, fs1] = audioread('004.mp3',[1 150000]);
    handles.num = 0;
    p=audioplayer(y1,fs1);
    playblocking(p);
    %y=handles.array1;
    %fs=handles.array2;
    notequal=1;
    if y==y1
    	notequal=0;
    end
    
    disp(notequal);
    if notequal==1
        set(hObject,'CDATA',handles.back);
        set(handles.Object,'CDATA',handles.back);
    end
end

guidata(hObject, handles);
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y;
global fs;
disp(handles.num);
if handles.num == 0
    set(hObject,'CDATA',handles.front);
    [y, fs] = audioread('007.mp3',[1 150000]);
    handles.num = 1;
    p=audioplayer(y,fs);
    playblocking(p);
    %handles.array1 = y;
    %handles.array2 = fs;
    handles.Object=hObject;
else
    set(hObject,'CDATA',handles.front);
    [y1, fs1] = audioread('007.mp3',[1 150000]);
    handles.num = 0;
    p=audioplayer(y1,fs1);
    playblocking(p);
    %y=handles.array1;
    %fs=handles.array2;
    notequal=1;
    if y==y1
    	notequal=0;
    end
    
    disp(notequal);
    if notequal==1
        set(hObject,'CDATA',handles.back);
        set(handles.Object,'CDATA',handles.back);
    end
end

guidata(hObject, handles);
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y;
global fs;
disp(handles.num);
if handles.num == 0
    set(hObject,'CDATA',handles.front);
    [y, fs] = audioread('003.mp3',[1 150000]);
    handles.num = 1;
    p=audioplayer(y,fs);
    playblocking(p);
    %handles.array1 = y;
    %handles.array2 = fs;
    handles.Object=hObject;
else
    set(hObject,'CDATA',handles.front);
    [y1, fs1] = audioread('003.mp3',[1 150000]);
    handles.num = 0;
    p=audioplayer(y1,fs1);
    playblocking(p);
    %y=handles.array1;
    %fs=handles.array2;
    notequal=1;
    if y==y1
    	notequal=0;
    end
    
    disp(notequal);
    if notequal==1
        set(hObject,'CDATA',handles.back);
        set(handles.Object,'CDATA',handles.back);
    end
end

guidata(hObject, handles);
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y;
global fs;
disp(handles.num);
if handles.num == 0
    set(hObject,'CDATA',handles.front);
    [y, fs] = audioread('004.mp3',[1 150000]);
    handles.num = 1;
    p=audioplayer(y,fs);
    playblocking(p);
    %handles.array1 = y;
    %handles.array2 = fs;
    handles.Object=hObject;
else
    set(hObject,'CDATA',handles.front);
    [y1, fs1] = audioread('004.mp3',[1 150000]);
    handles.num = 0;
    p=audioplayer(y1,fs1);
    playblocking(p);
    %y=handles.array1;
    %fs=handles.array2;
    notequal=1;
    if y==y1
    	notequal=0;
    end
    
    disp(notequal);
    if notequal==1
        set(hObject,'CDATA',handles.back);
        set(handles.Object,'CDATA',handles.back);
    end
end

guidata(hObject, handles);
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y;
global fs;
disp(handles.num);
if handles.num == 0
    set(hObject,'CDATA',handles.front);
    [y, fs] = audioread('007.mp3',[1 150000]);
    handles.num = 1;
    p=audioplayer(y,fs);
    playblocking(p);
    %handles.array1 = y;
    %handles.array2 = fs;
    handles.Object=hObject;
else
    set(hObject,'CDATA',handles.front);
    [y1, fs1] = audioread('007.mp3',[1 150000]);
    handles.num = 0;
    p=audioplayer(y1,fs1);
    playblocking(p);
    %y=handles.array1;
    %fs=handles.array2;
    notequal=1;
    if y==y1
    	notequal=0;
    end
    
    disp(notequal);
    if notequal==1
        set(hObject,'CDATA',handles.back);
        set(handles.Object,'CDATA',handles.back);
    end
end

guidata(hObject, handles);
