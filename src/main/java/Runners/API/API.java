package Runners.API;

import com.vaf.RunnerInterchange;
import com.vaf.exceptions.MissingPropertiesException;

public class API {
    public static void main(String[] args) throws MissingPropertiesException {
        String[] defaultRunnerArgs = {
                "--activeTags", "@Api",
                "--featureFilePath", "src/main/resources/Features/API",
                "--stepDefPath", "com.vaf.steps", "com.example.ui.stepdef"
        };
        RunnerInterchange.initializeAndRun(args, defaultRunnerArgs);
    }
}
