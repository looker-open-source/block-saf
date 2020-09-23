# Readme

### What does this Block do for me?

**(1) Analyze Transcribed Audio** - Analyze metrics such as call sentiment, call volume, and call length on the entire set of transcribed calls to get a holistic view of call performance.

**(2) Understand Agent/Caller interactions** - Glean insights from speech patterns between callers and agents to understand agent performance and remediate issues.

**(3) Analyze Individual Calls** - Drill down into single call logs to understand details and verify accuracy of transcription.


### Block Info

This block is modeled on the Speech Analysis Framework schema. Each call is parsed to extract the metadata as well as the transcript of the audio between the caller and the agent.

### Speech Analytics Framework Raw Data Structure

Call audio data is initially extracted as a payload, which can be converted into a JSON format. Each payload contains all the information about that call, including the full transcript.

### DialogFlow Block Structure

The SAF block consists of an Explore with three underlying views.

**(1) Transcripts View**

This view defines dimensions and measures for the raw data in the transcripts table. It also defines dimensions and measures for the data in the unnested fields for words, entities, and sentences.

**(3) Block SAF Model**

This view is used to define any custom variables as well as their values that are logged as part of a specific DialogFlow deployment.

### Implementation Instructions / Required Customizations

**(1) Table Name in the Manifest File**

In the manifest file, you’ll need to input the connection and the table name in which the Speech Analysis Framework transcripts are stored.



### What if I find an error? Suggestions for improvements?

Great! Blocks were designed for continuous improvement through the help of the entire Looker community, and we'd love your input. To log an error or improvement recommentation, simply create a "New Issue" in the corresponding [Github repo for this Block](https://github.com/llooker/dialogflow/issues). Please be as detailed as possible in your explanation, and we'll address it as quick as we can.
