function params = preprocWavelets_grid_GetMetaParams(Arg)
% Usage: params = preprocWavelets_grid_GetMetaParams(Arg)
% 
% Returns parameter set for a preprocWavelets_grid. The parameters
% specified by Arg=1 and 2 are the natural movie stimuli in Nishimoto et
% al 2011

params = preprocWavelets_grid;
params.argNum = Arg;

switch Arg
    case 1
        % Motion energy model with fewer features
        % Housekeeping
        params.class = 'preprocWavelets_grid';
        params.show_or_preprocess = 1; % True to preprocess; false to return gabor channels
        params.verbose = 1;
        params.gaborcachemode = 0;
        params.valid_w_index = NaN; % Select particular gabor channels by number
        % Temporal frequency params
        params.tfdivisions = 3;
        params.tfmax = 2.66667; % = 4hz @ 15 fps
        params.tfmin = 1.33333; % = 2hz @ 15 fps
        params.tsize = 10;
        params.tf_gaussratio = 10; 
        params.tenv_max = 0.3000;
        params.zerotf = 1;
        params.f_gaussratio = .5;
        % Orientation/direction params
        params.dirdivisions = 8;
        params.local_dc = 1; % T/F. Include circular gaussians (w/ no spat. freq.)
        params.directionSelective = 1;
        % Spatial extent params
        params.sfdivisions = 5;
        params.sfmax = 24; %
        params.sfmin = 1.5; %
        params.f_step_log = 1; % Applies to both SF and TF?
        params.std_step = 4; % Governs how closely spaced channels are; a reasonable range is 2.5-4
        params.sf_gaussratio = 0.6000; % 81 channels @maxsf=24; 9x9 ; 13x13 @maxsf=32
        params.fenv_mode = 0; % use same env for spatial & temporal gabors
        params.senv_max = 0.3000;
        params.wrap_all = 0;
        % Handling phase
        params.phasemode = 0; % Determines how to do phase (square & sum quadrature pairs, etc)
        params.phasemode_sfmax = NaN; % No idea
        params.zeromean = 1;
    case 2
        % larger motion energy model 
        % STRFlab conventions, housekeeping
        params.class = 'preprocWavelets_grid';
        params.show_or_preprocess = 1;
        params.wrap_all = 0;
        params.verbose = 1;
        params.gaborcachemode = 0;
        params.valid_w_index = NaN;
        % Temporal frequency params
        params.tfdivisions = 3;
        params.tfmax = 2.66667;
        params.tfmin = 1.33333;
        params.tsize = 10;
        params.tf_gaussratio = 10; 
        params.tenv_max = 0.3000;
        params.zerotf = 1;
        % Orientation/direction params
        params.dirdivisions = 8;
        params.local_dc = 1; 
        params.directionSelective = 1;
        % Spatial extent params
        params.sfdivisions = 5;
        params.sfmax = 32; %
        params.sfmin = 2; %
        params.f_step_log = 1; % Applies to both SF and TF?
        params.std_step = 3.5; % Governs how closely spaced channels are
        params.sf_gaussratio = 0.6000; % 81 channels @maxsf=24; 9x9 ; 13x13 @maxsf=32
        params.fenv_mode = 0; % (whether to use fenv_max for both senv_max and tenv_max) 
        params.senv_max = 0.3000;
        % Nonlinearities
        params.phasemode = 0; % Determines how to do phase (square & sum quadrature pairs, etc)
        params.phasemode_sfmax = NaN; % No idea
        params.zeromean = 1;        
        
    case 3
        % Same as 1, but NO PYRAMID (high spatial frequency channels only)
        % smaller motion energy model
        % STRFlab conventions, housekeeping
        params.wclass = 'preprocWavelets_grid';
        params.show_or_preprocess = 1;
        params.wrap_all = 0;
        params.verbose = 1;
        params.gaborcachemode = 0;
        % Temporal frequency params
        params.tfdivisions = 3;
        params.tfmax = 2.66667;
        params.tfmin = 1.33333;
        params.tsize = 10;
        params.tf_gaussratio = 10; 
        params.tenv_max = 0.3000;
        params.zerotf = 1;
        params.f_gaussratio = .5;
        % Orientation/direction params
        params.dirdivisions = 8;
        params.local_dc = 1; % T/F. Include gaussians w/ no spat. freq.
        params.directionSelective = 1;
        % Spatial extent params
        params.sfdivisions = 1;
        params.sfmax = 24; %
        params.sfmin = 24; %
        params.f_step_log = 1; % Applies to both SF and TF?
        params.std_step = 4; % Governs how closely spaced channels are
        params.sf_gaussratio = 0.6000; % 81 channels @maxsf=24; 9x9 ; 13x13 @maxsf=32
        params.fenv_mode = 0; % no idea
        params.senv_max = 0.3000;
        % Nonlinearities
        params.phasemode = 0; % Determines how to do phase (square & sum quadrature pairs, etc)
        params.phasemode_sfmax = NaN; % No idea
        params.zeromean = 1;
    case 4
        % Same as 2, but NO PYRAMID (high spatial frequency channels only)
        % STRFlab conventions, housekeeping
        params.class = 'preprocWavelets_grid';
        params.show_or_preprocess = 1;
        params.wrap_all = 0;
        params.verbose = 1;
        params.gaborcachemode = 0;
        params.valid_w_index = NaN;
        % Temporal frequency params
        params.tfdivisions = 3;
        params.tfmax = 2.66667;
        params.tfmin = 1.33333;
        params.tsize = 10;
        params.tf_gaussratio = 10; 
        params.tenv_max = 0.3000;
        params.zerotf = 1;
        % Orientation/direction params
        params.dirdivisions = 8;
        params.local_dc = 1; 
        params.directionSelective = 1;
        % Spatial extent params
        params.sfdivisions = 1;
        params.sfmax = 32; %
        params.sfmin = 32; %
        params.f_step_log = 1; % Applies to both SF and TF?
        params.std_step = 3.5; % Governs how closely spaced channels are
        params.sf_gaussratio = 0.6000; % 81 channels @maxsf=24; 9x9 ; 13x13 @maxsf=32
        params.fenv_mode = 0; % (whether to use fenv_max for both senv_max and tenv_max) 
        params.senv_max = 0.3000;
        % Nonlinearities
        params.phasemode = 0; % Determines how to do phase (square & sum quadrature pairs, etc)
        params.phasemode_sfmax = NaN; % max (min?) SF for which phase is computed
        params.zeromean = 1; 
    case 5
        % same as 1 w/ NO TEMPORAL CHANNELS (static Gabor wavelet model)
        % STRFlab conventions, housekeeping
        params.class = 'preprocWavelets_grid';
        params.show_or_preprocess = 1; % True to preprocess; false to return gabor channels
        params.verbose = 1;
        params.gaborcachemode = 0;
        params.valid_w_index = NaN; % Select particular gabor channels by number
        % Temporal frequency params
        params.tfdivisions = 1;
        params.tfmax = 0; %2.66667; % = 4hz @ 15 fps
        params.tfmin = 0; %1.33333; % = 2hz @ 15 fps
        params.tsize = 1;
        params.tf_gaussratio = 1; %10; 
        params.tenv_max = 0.3000;
        params.zerotf = 1;
        params.f_gaussratio = .5;
        % Orientation/direction params
        params.dirdivisions = 8;
        params.local_dc = 1; % T/F. Include circular gaussians (w/ no spat. freq.)
        params.directionSelective = 1;
        % Spatial extent params
        params.sfdivisions = 5;
        params.sfmax = 24; %
        params.sfmin = 1.5; %
        params.f_step_log = 1; % Applies to both SF and TF?
        params.std_step = 4; % Governs how closely spaced channels are; a reasonable range is 2.5-4
        params.sf_gaussratio = 0.6000; % 81 channels @maxsf=24; 9x9 ; 13x13 @maxsf=32
        params.fenv_mode = 0; % use same env for spatial & temporal gabors
        params.senv_max = 0.3000;
        params.wrap_all = 0;
        % Handling phase
        params.phasemode = 0; % Determines how to do phase (square & sum quadrature pairs, etc)
        params.phasemode_sfmax = NaN; % No idea
        params.zeromean = 1;
    case 6
        % same as 2 w/ NO TEMPORAL CHANNELS (static Gabor wavelet model)
        % STRFlab conventions, housekeeping
        params.class = 'preprocWavelets_grid';
        params.show_or_preprocess = 1;
        params.wrap_all = 0;
        params.verbose = 1;
        params.gaborcachemode = 0;
        params.valid_w_index = NaN;
        % Temporal frequency params
        params.tfdivisions = 1;
        params.tfmax = 0;
        params.tfmin = 0;
        params.tsize = 1;
        params.tf_gaussratio = 1; 
        params.tenv_max = 0.3000;
        params.zerotf = 1;
        % Orientation/direction params
        params.dirdivisions = 8;
        params.local_dc = 1; 
        params.directionSelective = 1;
        % Spatial extent params
        params.sfdivisions = 5;
        params.sfmax = 32; %
        params.sfmin = 2; %
        params.f_step_log = 1; % Applies to both SF and TF?
        params.std_step = 3.5; % Governs how closely spaced channels are
        params.sf_gaussratio = 0.6000; % 81 channels @maxsf=24; 9x9 ; 13x13 @maxsf=32
        params.fenv_mode = 0; % (whether to use fenv_max for both senv_max and tenv_max) 
        params.senv_max = 0.3000;
        % Nonlinearities
        params.phasemode = 0; % Determines how to do phase (square & sum quadrature pairs, etc)
        params.phasemode_sfmax = NaN; % No idea
        params.zeromean = 1;        
    otherwise
        error('Unknown argument!')        
end
