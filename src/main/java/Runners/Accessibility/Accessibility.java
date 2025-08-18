package Runners.Accessibility;

import com.vaf.RunnerInterchange;
import com.vaf.exceptions.MissingPropertiesException;

public class Accessibility {
    public static void main(String[] args) throws MissingPropertiesException {
        String[] defaultRunnerArgs = {
                "--activeTags", "@CompletePageCheck",
                "--featureFilePath", "src/main/resources/Features/Accessibility",
                "--stepDefPath", "com.vaf.steps", "com.example.ui.stepdef"
        };
        RunnerInterchange.initializeAndRun(args, defaultRunnerArgs);
    }
}
