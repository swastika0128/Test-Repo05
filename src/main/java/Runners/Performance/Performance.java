package Runners.Performance;

import com.vaf.RunnerInterchange;
import com.vaf.exceptions.MissingPropertiesException;

public class Performance {
    public static void main(String[] args) throws MissingPropertiesException {
        String[] defaultRunnerArgs = {
                "--activeTags", "@rampUsers",
                "--featureFilePath", "src/main/resources/Features/Performance",
                "--stepDefPath", "com.vaf.steps", "com.example.ui.stepdef"
        };
        RunnerInterchange.initializeAndRun(args, defaultRunnerArgs);
    }
}
