%
%  make.m
%
%  Created by L�a Strobino.
%  Copyright 2015. All rights reserved.
%

function make(varargin)

if nargin > 0 && strcmpi(varargin{1},'clean')
  
  m = mexext('all');
  for k = 1:length(m)
    delete(['*.' m(k).ext]);
  end
  
else
  
  mex json_decode.cpp jsmn.cpp -g
  mex json_encode.cpp -g
  
end
