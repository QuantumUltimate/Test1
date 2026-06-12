Benchmark - by Kragast, based on one made by Dominexis



DESCRIPTION

This datapack is designed to test the efficiency of a function or command technique by running it recursively as many times as possible before the game starts to lag. It also supports a live comparison between multiple functions.

This datapack is designed for Java Edition 1.21.11. However, it is written so that it can be used in older versions as well. If you want to use it in versions 1.15-1.20.6, you can just rename the three "function" directories ("benchmark/function/", "benchmark/tags/function/", "minecraft/tags/function") to "functions". Check the game logs for additional errors. The rest applies.



WHAT'S NEW aka CHANGELOG

Now you can automate your testing. Just edit the config file and go have a cup of tea, while the datapack collects all the needed data on its own. I have encountered several problems with Dominexis' datapack:
1) The benchmark runs only once. > Now you can set amount of runs you want.
2) Only one function can be run at a time. Not convenient to compare. > Now you can compare 2, 3 or even more functions.
3) First function runs are worse than the next ones. > Now the datapack calculates the measurement uncertainty. You can set a threshhold and just wait for the fluctuations to average out.



SETTING UP:

Because this datapack requires that you edit a function to benchmark certain techniques, you must extract the folder from the .zip into a world. I recommend an empty flat world. This folder is the datapack, not the .zip file. Do this before proceeding.



HOW TO USE:

All files, that are supposed to be edited, are nested high up in the folders so you can't miss them.
After ending editing files, don't forget to save them and to reload the datapack in your world.


Find the config file `benchmark:config` and be aware of it.

To test one function, there is an option to compare it to an empty function. [config hint: SKIP_EMPTY_FUNCTION] Put your commands in the function `benchmark:test`.

To compare several commands, put them in different functions. Depending on how many functions you want to compare, you will need more functions. There are 3 by default: `benchmark:test`, `benchmark:test2`, and `benchmark:test3`. To add more, edit the `benchmark:order` function and set the desired amount in the config [config hint: FUNCTION_AMOUNT_TO_TEST].


Once it is saved and reloaded, run this command: /function #benchmark:get_profile
The benchmark will start in 1 tick (immediately). Depending on the config settings, you may have to wait some amount of time. To get more runtime information, you can display the scoreboard: /scoreboard objectives setdisplay sidebar benchmark.var
If you want to force stop the benchmark, run: /function #benchmark:halt
This will abort the current measurement, but all the done ones will still be processed.

The yellow numbers in the chat represent how many times the function executed. The more times the function executes, the more efficient the commands are, keep that in mind. Also at the end the datapack calculates the per function one execution time, but only if you enable comparison to the empty function.

Don't worry about the tick speed histogram being in the orange, that's normal.

To get the best and the most consistent result, don't change your computer load while running the benchmark.



UNCERTAINTY:

The absolute uncertainty is calculated as dx = sum(abs(x - sum(x)/N))/N, and the relative uncertainty is rounded up. So if you want less than 5% it will be (almost) exactly less than 5%, and not e.g. 5.4%.



HOW TO UNINSTALL:

Once you're done using it, you can remove all the scoreboard objectives from your world by running the command: /function #benchmark:uninstall
Afterward, disable or remove the datapack before reloading.