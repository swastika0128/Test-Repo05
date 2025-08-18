package Runners.UI;

import com.vaf.RunnerInterchange;
import com.vaf.exceptions.MissingPropertiesException;

public class UI {
    public static void main(String[] args) throws MissingPropertiesException {
        String[] defaultRunnerArgs = {
                "--activeTags", "@Smoke",
                "--featureFilePath", "src/main/resources/Features/UI",
                "--stepDefPath", "com.vaf.steps", "com.example.ui.stepdef"
        };
        RunnerInterchange.initializeAndRun(args, defaultRunnerArgs);
    }
}
