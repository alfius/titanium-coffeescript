task default: :compile

desc "Compile coffee files from ./coffee to ./Resources and run tests"
task compile: :clean do
  sh 'coffee -o Resources/ -c coffee/'
end

desc "Clean"
task :clean do
  sh "find Resources -name '*.js' | grep -v underscore.js | xargs -r rm"
end
