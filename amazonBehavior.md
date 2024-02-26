# Amazon uses behavioral interviews to assess job candidates based on their past experiences. 
These questions typically start with “Tell me about a time you…”
NOTE: USE STAR - Situation, Task, Action, Result
## Questions
1. Tell me about a time you failed at work. 
	1. **Answer** 
		- **S/T**: Run-over-run pojos
		- **A**: open source lib borked
		- **R**: lots of work and design was dropped, could have just rolled my own storage
		1. **Answer** 
			- **R**: do trust OSS that is not widely addopted
1. Tell me about a challenge you faced. 
	1. **Answer** 
		- **S/T**: 
	1. What was your role & the outcome?
		1. **Answer** 
			- **A**: 
			- **R**: 
1. Tell me about a time you disagreed with your boss
	1. **Answer** 
		- **S/T**: Danny wanted manual feeds
		- **A**: I didn't listen and did auto anyway
		- **R**: We got the system out, and could regression test, and he even complemented me for my foresight
1. Tell me about a time you had to work or make a decision quickly / under a tight deadline
	1. **Answer** 
		- **S/T**: 
		- **A**: 
		- **R**: 
1. Tell me about a time you had to deal with a difficult customer
	1. **Answer** 
		- **S/T**: OBP, didn't want libs
		- **A**: I met with team, talked thru problems, just trust me bro
		- **R**: We did libs, kept test creation with up with team development, devs even wrote tests
1. Tell me about one of your projects where you put the customer first
	1. **Answer** 
		- **S/T**: 
		- **A**: 
		- **R**: 
1. Tell me about a time you did something at work that wasn't your responsibility / in your job description
	1. **Answer** 
		- **S/T**: FDI team had some attrition and on-call rotation was getting dire
		- **A**: I pushed for QA being added to rotation
		- **R**: I and my fellow QA'ers learned the product more deeply, helped identify regression tests needed when things went wrong, earned trust of devs, and was able to help out with designing infrastructure issues
1. Tell me about a time when you went over and above your job responsibility in order to help the company
	1. **Answer** 
		- **S/T**: We got a Sev 1 ticket for a centralized company wide db going down. I id'ed the problem, got the right owners on the line, and stayed with the issue until handoff. Later no one wanted to write the COE. Company just started doing COEs and no one wanted to touch it.
		- **A**:  When talking with my skip-level, I volentered to do the COE, digging deep and owning the COE for systems I didn't own. Synced with the right people, got tickets created, presented COE
		- **R**: Additional alarms and alerts were added, all the tickets identified were cleared, people learned COEs were not that bad.
1. Tell me about a time when you had to make an important decision without approval from your boss
	1. **Answer** 
		- **S/T**: 
		- **A**: 
		- **R**: 
1. Tell me about a time you had to make an urgent decision without data
	1. **Answer** 
		- **S/T**: 
		- **A**: 
		- **R**: 
1. Tell me about a time when you launched a feature with known risks
	1. **Answer** 
		- **S/T**: Identified a design feature which would cause data to be lost during deployments.
		- **A**: Pushed back on release, talking with Product and Management in go/no go meeting about risk. Layed out the case, what problems might happen, and how we could mitigate them. Ultimately did not approve release, letting Product and Management know that they could release without my approval, but that it was their dicision to go around QA
		- **R**: Feature release, we kept an eye out and did end up finding and fixing lost / stuck data, rerunning jobs manually to get prod data cleaned up. Future release we added an ability to take a write outage for release, and redesign for resilience was put on the road map.
1. Tell me about a time when you found an opportunity that no one else saw.
	1. **Answer** 
		- **S/T**: 
		- **A**: 
		- **R**: 
1. Tell me about a time you had a conflict with a coworker or manager and how you approached it
	1. **Answer** 
		- **S/T**: Micromanagement from Maria
		- **A**: Spoke with her multiple times on management style, and communication. Made progress. Took a 3 week vacation, when I got back we were right back to square one. Poor communication and micromanagement / tiger management style strongly effected my work satisfaction. Met with skip level to discuss as a last resort, and  ultimately decided to quit.
		- **R**: Was approached by another manager my second to last day on the order of my skip-level (director) was offered a move to their team so as to retain me. Took the offer and created the OBP product leading a team of contractors, getting promoted to Staff engineer.
1. Tell me about a time your work was criticized
	1. **Answer** 
		- **S/T**: 2 libs for test framework, make change twice
		- **A**: Met with dev team to gather feedback on the feature
		- **R**: Reduced abstraction between libraries to address feedback and eliminate issues
1. Tell me about a time when people in your team didn't agree with you
	1. **Answer** 
		- **S/T**: 
		- **A**: 
		- **R**: 
1. Tell me about a time you had a conflict with your team but decided to go ahead with their proposal
	1. **Answer** 
		- **S/T**: see 
		- **A**: 
		- **R**: 
1. Tell me about a time you re designed a process and why
	1. **Answer** 
		- **S/T**: 
		- **A**: 
		- **R**: 
1. Tell me about a time you solved a big problem in your company
	1. **Answer** 
		- **S/T**: Redesigned our structured interviewing process for SDET, and contributed to SDE process.
		- **A**: Created documentation, identified classes of coding questions, layed out what was desired for success by job level, reviewed others work
		- **R**: Delivered a redesigned structured interview that was leveraged by the company to hier new engineers
1. Tell me about a time when you had a plan but ran into some obstacles. 
	1. **Answer** 
		- **S/T**: UI testing honey extension lib re-arch
		- **A**: UI testing didn't work
	1. What did you do about it?
		1. **Answer** 
			- **R**: Leveraged support specialists to manually execute plans. Circled back to automate manual testing after deadline passed.
1. Tell me about a project in which you had to deep dive into analysis
	1. **Answer** 
		- **S/T**: Performance testing an new authz service
		- **A**: Generating lots of data from performance test experiments, planning, and exploration. Reviewed the data, and shared initial findings with the team to leverage their talent and collaborate on digging in
		- **R**: Found issues with the design of the service, and how the data model was originally created, allowing another member of the team to use those findings to propose a better muti-tennant solution.
1. Tell me about the most complex problem you have worked on
	1. **Answer** 
		- **S/T**: Testing honey extension library code. Difficult to understand the abstraction layer of the code, other SDETs had tried and failed
		- **A**: Read team wiki article, design docs, kt vids, worked with dev, did deep dives on code, and worked hands on to understand behavior
		- **R**: Was able to structure explinations of terminologies and how the system worked more simply so that peers and management were better able to understand at a high level how it worked. Contributed significatnlt to test design and planning, allowing for catching of several critical bugs early in release process for 3 late stage implementation releases
1. Tell me about a time when you used a lot of data in a short period of time
	1. **Answer** 
		- **S/T**: Perf testing AuthZ migration
		- **A**: Created several questions, designed experiments, executed, updated experiments as data was available
		- **R**: Was able to catch a db issues and work with engineers to fix them and validate solution
1. Tell me how you deal with ambiguity
	1. **Answer** 
		- **S/T**: Joining SIP, no clue of their services or the testing needs
		- **A**: created maturity matrix, worked with team to identify systems we owned, legacy systems being turned down, and then tracked down doc, code, tests, and pipelines
		- **R**: created a doc that we could all reference, that was helpful in communicating with others, and tests management was interested in applying to other teams
1. Tell me about a time when you were faced with a problem that had a number of possible solutions.
	1. **Answer** 
		- **S/T**: 
		- **A**: 
		- **R**: 
1. Tell me about a time you applied judgment to a decision when data was not available
	1. **Answer** 
		- **S/T**: 
		- **A**: 
		- **R**: 
1. Tell me about a time you came across a scenario where the deadline given to you for a project was earlier than expected
	1. **Answer**
		- **S/T**: Late stage release for honey redesign. Needed to meet a regularly scheduled release window with a new feature. Release schedule was poorly communicated, and it became clear late in the process that the team had less time to deliver the milestone than anticipated. Test planning had already concluded and time was not going to be sufficient
		- **A**: Sought first to identify how had the deadline was, implications for missing. Paired down release testing to absolute minimum to validate product. Pulled late shifts getting critical testing path covered. Found two bugs, one minor, one medium severity, minor had an easy work around, medium got patched the last day before release.
		- **R**: Made the release, sending out a know minor issue but making the release window
1. Tell me about the most challenging project you ever worked on
	1. **Answer** 
		- **S/T**: 
		- **A**: 
		- **R**: 
1. Tell me about a time when you had to handle pressure
	1. **Answer** 
		- **S/T**: Migrating Metadata team off Sable on to their own journal based service. was responsible for the static migration portion of the live & static switch over with no outage process
		- **A**: Many late nights working to learn the system, get a clean run with valid translated data and ensure all data was present and correct. didn't eat much, slept very little, and worked around the clock crunching to meet deadline
		- **R**: lost weight, but ultimately delivered a scalable solution with self throttling that correctly migrated and transformed the data, productized to the point that when I was moved back to sable, a new hier was able to take the code I created, and migrate the other cluster regions with no issues and minimal sync (just a 30 min meeting once to walk thru the code and execution). Learned the value of estimation, pushing back on deadlines, design discussion with peers, and not working myself to the bone.
1. Tell me about a time when you had two deadlines at the same time. 
	1. **Answer** (numerous, happens all the time when your the soul QA for more than 5 people)
		- **S/T**: Had a central testing initive to provide testing metrics for my team for roll up to the executives. At the same time, had a big release for an AuthN token migration to JWT.
	1. How did you manage the situation?
		1. **Answer** 
			- **A**: Prioritized myself that AuthN was critical, and while embarassing if pushed back, the testing metrics was not as critical for business needs. Communicated to dev manangement, product, and test management. Got buy-in on priortization, allowing for test management to set expectations for team test metric delivery
			- **R**: Delivered JWT token, but was late on test metrics, project pushed to next sprint where it was delivered early in the sprint cycle
1. Tell me about your most significant accomplishment. 
	1. **Answer** 
		- **S/T**: Honey extension library redesign testing
		- **A**: Led team of support specialists in test design, planning, execution, bug reporting, triage, etc.
		- **R**: Delivered 100% on time, with no functionaliy degredation, and no customer impact
	1. Why was it significant?
		1. **Answer** 
			- **R**: This was the most complex product I have yet been a part of, was critical to the on going success of the company, and I delivered on time, with high quality
1. Tell me about a time you proposed a non-intuitive solution to a problem and how you identified that it required a different way of thinking 
	1. **Answer**
		- **S/T**: geolocation service was dropping pins in wrong country, devs fixed it but needed it validated
		- **A**: used generative testing for geolocation service to randomly pick point on a boarder
		- **R**: was able to prove correctness of service without need to create complex test cases
1. Tell me about a time you provided feedback that was helpful to a peer
	1. **Answer** 
		- **S/T**: Mentor support specialist trying to break into engineering without a degree as part of a quasi-formal internship program for the specialist to transion into an SDET role
		- **A**: Provided feedback on requirements gathering, test planning, code design, and deliverables.
		- **R**: Specialist grew and delivered increasingly higher quality and more maintainable solutions, covering cases and learning from results. Didn't transtion due to lay offs, but project was ahead of schedule and my recomendation was definitely to hier. Specialist got a job as a junior engineer within 1 month of lay offs.
1. Tell me about a time you hired or worked with people smarter than you are
	1. **Answer** 
		- **S/T**: Tommy, Marcus, and Matt were all on the same team
		- **A**: Tried my best to help and follow, learning what I could from how they worked, and how they approached problems
		- **R**: I grew in both my ability to problem solve, and to do rad shit
1. Tell me about a time you stepped in to help a struggling teammate
	1. **Answer** 
		- **S/T**: Andy behind on deliverables on OBP
		- **A**: Talked with him to get requirements. Split his work between myself, rewriting tickets and assigning. After delivery, met with him to postmortem estimation and assignment to make sure he wasn't pulling in too much.
		- **R**:  Was able to get delivery for both mine and his deliverables that sprint. He was able to better manage his time, and we got buy-in from devs to help author integration tests, due to the number of devs he was supporting and the speed of their output so that he didn't get overwhelmed again.
1. Tell me about a time you successfully delivered a project with limited budget or resources
	1. **Answer** 
		- **S/T**: 
		- **A**: 
		- **R**: 
1. Tell me about the last time you figured out a way to keep an approach simple or to save on expenses
	1. **Answer** 
		- **S/T**: 
		- **A**: 
		- **R**: 
1. Tell me about a time you had to learn something 
	1. **Answer** 
		- **S/T**: Generative testing. Had to learn generative testing to test geolocation service. New technique to me at the time. My manager had used it breifly in a prior role.
		- **A**: Created a protype project, a toy project for a tree implementation, and testing for that tree. Was able to leverage reading and learning online in hands on with the project, gaining help from my Manager at one point when I became stuck.
		- **R**: Creating the prototype helped me do things
1. Tell me about your biggest career failure and what you learned from it
	1. **Answer** 
		- **S/T**: Tried to get round table meetings for better comminication and feedback of executive decisions to team leads. The hope was that would facilitate communication of top down mandates to teams and allow for a mechanism for teams to feed back alternatives and ideas to execs
		- **A**: Created a proposal. presented at a offsite for tech leads. Got massive pushback from a single high level lead, and it recieved very tepid response from those that attended the proposal talk
		- **R**: Learned that politics and processes improvements don't always mix well. Taught me to look beyond the process and consider the human factor when it comes to power and decision making
1. Tell me about a time you taught yourself a skill
	1. **Answer** 
		- **S/T**: had to learn scala, create test framework in scala
		- **A**: took up toy project to get started, lots of googling for "how do I do x-y-z in Scala" based on my understanding of java, worked with expert on the team when totally stuck
		- **R**: created a great test framework, leveraged by 2 teams to catch many issues
1. Tell me about something you learned that made you better at your job
	1. **Answer** 
		- **S/T**: Had encountered an issue a few months into a job, that I had encountered before but couldn't find notes for.
		- **A**: Started taking notes in markdown, order by day, in a journl fashion
		- **R**: taking notes keeps me on task, and is a point of reference, allows for easy lookup locally, and is sharable either on a wiki or via a git repository due to it being markdown. Has helped hugely by being a point of reference, organized, and shares knowledge with others quickly.
1. Tell me about the most successful project you've done
	1. **Answer** 
		- **S/T**: OBP
		- **A**: Scala libs
		- **R**: Milestones, team leadership, satisfied dev team, satisfied management, product, and execs
1. Tell me about a project that you wish you had done better and how you would do it differently today
	1. **Answer** See failed project question
1. Tell me a time that a goal was hard to achieve. 
	1. **Answer** 
		- **S/T**: 
		- **A**: 
		- **R**: 
	1. What did you learn from that?
		1. **Answer** 
			- **S/T**: 
			- **A**: 
			- **R**: 
1. Tell me a piece of difficult feedback you received and how you handled it
	1. **Answer** 
		- **S/T**: 
		- **A**: 
		- **R**: 
1. Tell me about a time that you went above and beyond for an employee
	1. **Answer** 
		- **S/T**: 
		- **A**: 
		- **R**: 
1. Tell me about a time you saw an issue that would negatively impact your team. 
	1. **Answer** 
		- **S/T**: found a seemingly minor bug that would cause a backend crash. pressing a button multiple times for a UI would cause backend to queue up jobs and ultimately fail due to data being overwritten
	1. How did you deal with it?
		1. **Answer** 
			- **A**: Raised it with team. Fought for the bug to be a blocker, demo'ed the bug to product.
			- **R**: Got product and dev buy in. Was able to push back the release to the following sprint to give us time to address the bug
1. Tell me about a time when you made a decision which impacted the team or the company
	1. **Answer** 
		- **S/T**: No test env, mock based testing in Circle CI
		- **A**: Didn't push back on the mocks hard enough, brought it up, tired to advocate for a local services model, but didn't champion the idea enough
		- **R**: Mocks were flakey, incorrect, and didn't deliver on the drop-in replacement they promissed. The project stalled, and removing the test environment and switching to this solution never happened for the majority of services, splitting the microservice deployment process across the company.
1. Tell me about a decision that you made about your work and you regret now
	1. **Answer** 
		- **S/T**: Avoiding frontend testing for so long
		- **A**: heard timing issues and its general frustration. was hesitant to learn javascript
		- **R**: don't have as deep a wealth of knowledge as backend testing
1. Tell me about a time when you failed to do the right thing
	1. **Answer** 
		- **S/T**:  
		- **A**: 
		- **R**: 
1. What was the largest project you've executed?
	1. **Answer** OBP
		- **S/T**: Lead contact team of testers to support delivery of a new enterprise data model for a burning need feature in six months
		- **A**: led the team in doing scala lib based test framework
		- **R**: kept up with development, caught data model issues, met every milestone on time, devs contributed integration test, delivered on time with high quality
1. What is the most innovative idea you've ever had?
	1. **Answer** 
		- **S/T**: 
		- **A**: 
		- **R**: 