package Runners.Mobile;

import com.vaf.RunnerInterchange;
import com.vaf.enumerations.LogLevel;
import com.vaf.exceptions.MissingPropertiesException;
import com.vaf.utils.LogUtil;

public class Mobile {
    public static void main(String[] args) throws MissingPropertiesException, InterruptedException {
        String[] defaultRunnerArgs = {
                "--activeTags", "@Android",
                "--featureFilePath", "src/main/resources/Features/Mobile",
                "--stepDefPath", "com.vaf.appiumSteps",
        };
        LogUtil.log("This is my runner file.", LogLevel.INFO);
        RunnerInterchange.initializeAndRun(args, defaultRunnerArgs);
    }
}
