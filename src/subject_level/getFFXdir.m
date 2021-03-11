% (C) Copyright 2019 CPP BIDS SPM-pipeline developers

function ffxDir = getFFXdir(subLabel, funcFWFM, opt)
  %
  % Sets the name the FFX directory and creates it if it does not exist
  %
  % USAGE::
  %
  %   ffxDir = getFFXdir(subID, funcFWFM, opt)
  %
  % :param subID:
  % :type subID: string
  % :param funcFWFM:
  % :type funcFWFM: scalar
  % :param opt:
  % :param opt: structure
  %
  % :returns: - :ffxDir: (string)
  %

  ffxDir = fullfile(opt.derivativesDir, ...
                    ['sub-', subLabel], ...
                    'stats', ...
                    ['ffx_task-', opt.taskName], ...
                    ['ffx_space-' opt.space '_FWHM-', num2str(funcFWFM)]);

  if ~exist(ffxDir, 'dir')
    mkdir(ffxDir);
  end

end
