final: prev: let
  addNativeBuildInputs = drvName: inputs: {
    "${drvName}" = prev.${drvName}.overridePythonAttrs (
      old: {
        nativeBuildInputs = (old.nativeBuildInputs or []) ++ inputs;
      }
    );
  };
in
  {} // addNativeBuildInputs "pathspec" [final.flit-core] 
  // addNativeBuildInputs "editables" [final.flit-core] 
  // addNativeBuildInputs "pygments" [final.hatchling]
  // addNativeBuildInputs "urllib3" [final.hatchling]
  // addNativeBuildInputs "cbsodata" [final.setuptools]
