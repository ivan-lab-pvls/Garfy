import 'package:cached_network_image/cached_network_image.dart';
import 'package:finance_app5/widgets/bottom_bar.dart';
import 'package:finance_app5/model/news_item.dart';
import 'package:finance_app5/pages/current_news_page.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<NewsItem> news = [
    NewsItem(
      title:
          'Global debt has grown to \$315 trillion this year — here’s how we got here',
      text:
          'The world is mired in \$315 trillion of debt, according to a report from the Institute of International Finance. This global debt wave has been the biggest, fastest and most wide-ranging rise in debt since World War II, coinciding with the Covid-19 pandemic. “This increase marks the second consecutive quarterly rise and was primarily driven by emerging markets, where debt surged to an unprecedented high of over \$105 trillion—\$55 trillion more than a decade ago,”  the IIF said in its quarterly Global Debt Monitor report released in May. Around two-thirds of the \$315 trillion owed originates from mature economies, with Japan and the United States contributing the most to that debt pile. However, the debt-to-GDP ratio for mature economies — which is seen as a good indicator of a country’s ability to service its debts — has been falling in general.  On the other hand, emerging markets held \$105 trillion in debt, but their debt-to-GDP ratio hit a new high of 257%, pushing the overall ratio up for the first time in three years. China, India and Mexico were the biggest contributors, the report noted. The IIF identified stubborn inflation, rising trade friction and geopolitical tensions as factors that could pose a significant risk to debt dynamics, “putting upward pressure on global funding costs.” “While the health of household balance sheets should provide a cushion against ‘higher for longer rates’ in the near term, government budget deficits are still higher than pre-pandemic levels,” the IIF added. Of the \$315 trillion debt stock, household debt, which includes mortgages, credit cards and student debt, among others, amounted to \$59.1 trillion. Business debt, which corporations use to finance their operations and growth, stood at \$164.5 trillion, with the financial sector alone making up \$70.4 trillion of that amount. Public debt made up the rest at \$91.4 trillion.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107420402-Thumbnail_Explains_Global_Debt_03_Clean.jpg?v=1716865545&w=1260&h=630&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title: 'British retail sales plunge 2.3% in April, missing estimates',
      text:
          'LONDON — U.K. retail sales volumes dropped 2.3% in April as wet weather deterred shoppers, the Office for National Statistics said Friday. Economists polled by Reuters expected a smaller fall of 0.4%. “Sales volumes fell across most sectors, with clothing retailers, sports equipment, games and toys stores, and furniture stores doing badly as poor weather reduced footfall,” the ONS said. March’s figure was revised from flat to a 0.2% decline. Sales were up 0.7% across the three months to April compared to the previous three months following a weak December and holiday season, but were down 0.8% year on year. Kris Hamer, director of insight at the British Retail Consortium, pointed to bright spots in the data in cosmetics and computer sales. “With summer around the corner, and inflation fast approaching the Bank of England’s 2% target, retailers are hopeful that consumer confidence will improve, and spending will pick up once again,” Hamer said in a note. Consumer confidence did improve in May across both personal finances and the outlook on the wider economy, according to a survey released by GfK on Friday. Headline inflation in the U.K. cooled to 2.3% in April from 3.2%, figures published Wednesday showed. However, stickiness in core and services inflation led markets to push back bets for the first BOE interest rate cut from June to August or September. Phil Monkhouse, U.K. country manager at financial services firm Ebury, said the surprise General Election announced this week for July 4 might add “fresh uncertainty” into the minds of consumers who are already dealing with higher interest rates. “Preparing for the warmer weather, ensuring ready access to finance and putting in place hedging arrangements will be essential for retailers wanting to ride out any future sales volatility,” Monkhouse said. ',
      image:
          'https://image.cnbcfm.com/api/v1/image/107409405-1714655084725-gettyimages-2071875431-75601849.jpeg?v=1716552355&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'Auto insurance rates are jumping the most since the 1970s, but there could be relief soon',
      text:
          'Soaring auto insurance costs have been a principle driver behind inflation over the past year, but there could be relief on the way, according to Bank of America. The bank’s economists see several driving factors behind the run-up in costs to ease in the months ahead, possibly taking some of the heat off a category that has pushed the Federal Reserve to keep up its inflation fight. “The turbocharged increases in motor vehicle insurance premiums are a response to underwriting losses in the industry. Insurers saw losses,” BofA economist Stephen Juneau said in a note. However, he added, “There are signs that many insurers are getting back to profitability.” Primarily, the hit to insurers, which has been passed on to consumers, arose from three sources: higher vehicle prices, increased costs for repairs and “more accidents as driving trends returned to normal,” Juneau said. There’s some good news on that front. Sales prices for new and used vehicles have been trending lower in recent months and are down 0.4% and 6.9%, respectively, on a 12-month basis, according to Bureau of Labor Statistics data through April. Also, repair and maintenance services costs were flat in April though still up 7.6% from a year ago. Motor vehicle insurance costs, though, continued to soar. The category rose 1.8% in April on a monthly basis and was up 22.6% from a year ago, the largest annual increase since 1979, according to Bank of America. In the CPI calculation, auto insurance has a weighting of nearly 3%, so it’s a significant component. The recent trends probably do not “mean that your premium will fall, but we think the rate of increase should slow,” Juneau said. That has been the general story with inflation: prices are not falling, but the rate of increase is well off the pace of mid-2022 when inflation hit its highest level in more than 40 years. Overall CPI inflation ran at a 3.4% annual rate in April.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107401260-1713197323275-gettyimages-2148722906-ln2_3727_cobpl3ue.jpeg?v=1713197630&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'Fed officials seem like they have ‘no idea’ what is going on with U.S. inflation, strategist says',
      text:
          'Federal Reserve officials appear to have “no idea” what is happening when it comes to the inflation picture in the U.S., according to Julian Howard, lead investment director of multi-asset solutions at GAM. His comments come as policymakers have in recent weeks been urging patience over interest rate cuts, arguing that inflation has fallen by less than previously expected and is still too sticky for the Fed to press ahead with easing monetary policy. “I think the message that’s coming through is that they have no idea what’s going on,” Howard said Wednesday on CNBC’s “Squawk Box Europe.” The Fed declined to comment. Fed Governor Christopher Waller on Tuesday said that he needed to see further data evidence that inflation was softening before supporting rate cuts. “In the absence of a significant weakening in the labor market, I need to see several more months of good inflation data before I would be comfortable supporting an easing in the stance of monetary policy,” he said at an event at the Peterson Institute for International Economics in Washington. Waller’s comments were echoed by other Fed officials on Tuesday, including Boston Fed President Susan Collins. “I think the data has been very mixed ... and it’s going to take longer than I had previously thought,” she said at a conference hosted by the Atlanta Federal Reserve. “We’re in a period when patience really matters.” But Fed officials have not come out with a clear message about their expectations or to address why inflation remains elevated, GAM’s Howard said. “Inflation is notoriously difficult to predict and I don’t think they have any real idea what’s happening,” he noted. “To be honest, there’s a credibility problem,” Howard said. Policymakers initially suggested inflation would be subdued when it first started rising, Howard said, explaining that the rate then spiked. “And now [policymakers] think inflation is coming down but its not coming down fast enough,” he said. Data released earlier this month showed that the U.S. consumer price index came in at 3.4% for April on an annual basis. This was a slight dip from March’s 3.5% figure, and far below the 9.1% reading recorded in June 2022 when the inflation cycle peaked — but also remained above the Fed’s 2% target.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107334694-1700113136070-gettyimages-1744774442-FED_RESERVE_RATES.jpeg?v=1716365743&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'UK inflation comes in hotter than expected, slashing June rate cut bets',
      text:
          'LONDON — U.K. inflation came in hotter than expected with a drop to 2.3% in April, the Office for National Statistics said Wednesday, prompting traders to pull back from bets on a June interest rate cut from the British central bank. The headline reading declined from 3.2% in March. The April print marked the first time inflation has been below 3% since July 2021 and brings it within touching distance of the Bank of England’s 2% target. Economists polled by Reuters had nevertheless expected a steeper drop to 2.1%. Services inflation — a key measure being watched by the BOE because of the dominance of the sector in the U.K. economy and its reflection of domestically-generated price rises — eased only slightly to 5.9% from 6%. That missed a forecast of 5.5% from both a Reuters poll and the BOE.= Core inflation, excluding energy, food, alcohol and tobacco, dipped to 3.9% in April from 4.2% in March. A dramatic drop in the headline rate was widely expected because of the year-on-year decline in energy prices. Investors were instead set to focus on core and services inflation, after BOE policymakers indicated they would be willing to cut interest rates some time in the summer, but stressed that the timing would depend on fresh data. Following the print, money markets slashed the probability of a June rate cut to just 15%, down from 50% earlier in the day. The likelihood of an August cut was seen at 40%, down from 70%. Both core and services were “disappointing,” said Suren Thiru, economics director of the Institute of Chartered Accountants in England and Wales. “Lingering concerns over underlying inflationary pressures mean a June rate cut is unlikely. However, these figures may convince more rate setters to vote to ease policy, providing a signal that a summer rate cut is still possible,” Thiru said in a note. That positions the European Central Bank as potentially the next major central bank likely to start bringing down rates, as its policymakers continue to suggest it would take a big shock to prevent a June cut. Members of the U.S. Federal Reserve have meanwhile struck a significantly more hawkish tone in recent weeks, pushing back market expectations for a cut stateside until after September at the earliest.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107068685-gettyimages-1371981344-_sol2164e.jpeg?v=1716357017&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'Americans are feeling better about the economy for the first time in four months',
      text:
          'Americans’ attitudes toward the economy improved this month for the first time since January, thanks to better perceptions of the job market. The Conference Board’s Consumer Confidence Index for this month climbed to a reading of 102, up from 97.5 in April. Americans of all age groups felt better about the economy, the survey noted. That’s after consumer confidence declined in each of the prior three months. “Consumers’ assessment of current business conditions was slightly less positive than last month. However, the strong labor market continued to bolster consumers’ overall assessment of the present situation,” Dana Peterson, chief economist at The Conference Board, said in a release. Compared to the University of Michigan’s consumer survey, the Conference Board survey puts more weight on perceptions of the job market. Unemployment remains below 4%, job openings still exceed the number of unemployed people seeking work and employers are still pumping out jobs at a brisk pace. But elevated inflation still looms large. That’s precisely why consumer confidence declined for three straight months prior to May, when inflation readings came in hotter than expected. The April survey showed that “consumers cited prices, especially for food and groceries, as having the greatest impact on their view of the US economy,” Peterson said. The survey also showed that respondents felt more upbeat about the stock market, with “48.2% expecting stock prices to increase over the year ahead, compared to 25.4% expecting a decrease and 26.4% expecting no change.”Major stock indexes have soared to record highs recently, with the Nasdaq Composite briefly breaking above 17,000 in intraday trading Tuesday. Separately on Tuesday, the Federal Reserve Bank of New York released survey data on consumer expectations for a wide array of public policies, such as taxes, unemployment benefits and housing assistance. The survey, conducted in April, found that a higher share of Americans saw improved prospects for an increase in the federal minimum wage as well as higher welfare and unemployment benefits. Additionally, respondents’ expectations increased for expansions in federal student aid as well as student loan forgiveness.',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/shutterstock-editorial-14347919g.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
    ),
    NewsItem(
      title:
          'China unveils ‘historic’ rescue for crisis-hit property sector as home prices slump again',
      text:
          'China has unveiled wide-ranging measures to rescue its property sector, including asking local governments across the country to buy unsold homes from beleagured developers and easing rules on purchases. Even though China’s economy expanded faster than expected at the start of this year, growth is being weighed down by the all-important real estate sector, which once accounted for as much as 30% of economic activity. He Lifeng, vice premier and the Communist Party’s top economic official, said Friday that municipal governments should buy unsold homes and convert them into affordable social housing, in a plan that has been trailed as a major solution for the country’s crisis-ridden property sector. In a coordinated move, the People’s China of China (PBOC) announced that it will set up a nationwide program to provide 300 billion yuan (\$41.5 billion) in loans to fund state purchases of unsold homes. Tao Ling, deputy governor of the central bank, said at a press conference in Beijing that it will encourage commercials banks to support local state-owned enterprises to buy unsold homes and turn them into social housing. The 300 billion yuan provided by the central bank could eventually underpin 500 billion yuan (\$69 billion) worth of credit to support such purchases, she estimated. Expectations that Beijing was preparing a plan to have local governments across the country buy millions of unsold homes have successfully buoyed China stocks. Investors have been steadily pouring money back into Chinese shares since last month. China Real Estate Business, a newspaper run by the country’s housing ministry, described the measures as “heavyweight policies” that marked a “significant historic moment” for the real estate sector. Larry Hu, chief China economist at Macquarie Group, said the move to buy unsold homes was “positive” for the industry, but that the plan was missing key details such as how much would be funded. “Looking ahead, the key is when and at what scale the central government can provide a funding source,” he wrote in a Friday research note. China’s local governments have already racked up \$15 trillion in debt, much of it hidden, having borrowed heavily in recent years to cover the cost of pandemic-related spending and infrastructure projects.',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2152758804.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
    ),
    NewsItem(
      title: 'Japan’s economy contracts in first quarter',
      text:
          'Japan’s economy contracted in the first quarter, squeezed by weaker consumption and external demand and throwing a fresh challenge to policymakers as the central bank looks to lift interest rates away from near-zero levels. Preliminary gross domestic product (GDP) data from the Cabinet Office on Thursday showed Japan’s economy shrank 2.0% annualized in the January to March months from the prior quarter, faster than the 1.5% drop seen in a Reuters poll of economists. Downwardly revised data showed GDP barely grew in the fourth quarter. The reading translates into a quarterly contraction of 0.5%, versus a 0.4% decline expected by economists. Private consumption, which accounts for more than half of the Japanese economy, fell 0.7%, bigger than the forecast 0.2% drop. It was the fourth straight quarter of decline, the longest streak since 2009. “Japan’s economy hit the bottom in the first quarter,” said Yoshimasa Maruyama, chief market economist at SMBC Nikko Securities. “The economy will certainly rebound this quarter thanks to rising wages although uncertainty remains on service consumption.” Capital spending, a key driver of private demand, fell 0.8% in the first quarter, versus an expected decline of 0.7%, despite hefty corporate earnings. External demand, or exports minus imports, knocked 0.3 of a percentage point off first quarter GDP estimates. Policymakers are counting on rising wages and income tax cuts from June to help spur flagging consumption. The drag to growth from an earthquake in the Noto area this year and the suspension of operations at Toyota’s (TM) Daihatsu unit are also expected to fade. Still, a sharp decline in the yen to levels unseen since 1990 has fueled concerns about higher living costs, squeezing consumption. The Bank of Japan (BOJ) raised interest rates in March for the first time since 2007, in a landmark shift away from negative rates, but the central bank is expected to go slow in unwinding easy money conditions given a fragile economy.',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2149615387.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
    ),
    NewsItem(
      title: 'Wealthy Americans are starting to spend more carefully',
      text:
          'Americans with deep pockets have played a growing role in powering the US economy with their spending. But their days of splurging like there’s no tomorrow might be coming to an end. US household wealth surged in recent years, despite the scourge of high inflation and the Federal Reserve’s bitter medicine of elevated borrowing costs to rein in price increases. A robust stock market coupled with rising home values have boosted Americans’ wealth from 2019 through 2022, according to a Federal Reserve report on household finances. That increase is known as “the wealth effect,” and it has continued to shore up Americans’ finances as stocks shatter records and high bond yields beef up savings accounts. Plus, Americans who locked in a low mortgage rate before the Fed began to hike interest rates in 2022 and have decided to stay put have been shielded from the effects of high mortgage rates. Put together, that means many consumers have not only been able to withstand inflation, to a degree, but they’ve also been able to spend on travel, concerts and big-ticket items. US economic growth accelerated at a brisk pace in 2023, largely thanks to the US consumer. And it’s Americans older than 54 who hold the vast amount of household wealth in the US, more than 70%, according to Fed data. But the economy’s momentum has slowed a bit recently with figures on employment and retail spending for April coming in weaker than expected. While the broader economy remains healthy, including the job market with sub-4% unemployment, there are signs that an important corner has been turned. The shifting behavior of wealthy Americans is one of them. “It’s well known that the lowest income consumer is really struggling with inflation, but from a purely economic standpoint, it is the higher quintiles of earners that do the most spending,” Nanette Abuhoff Jacobson, global investment strategist at Hartford Funds, told CNN. There’s been some evidence of wealthy Americans growing cautious in the latest round of company earnings results. British luxury retailer Burberry reported last week that its profits plummeted by 40% in the budget year ending in late March. Sales in the Americas dropped off by 12% over the year. “Executing our plan against a backdrop of slowing luxury demand has been challenging,” Jonathan Akeroyd, Burberry’s chief executive, said in a statement.',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-1306777274-copy.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
    ),
    NewsItem(
      title:
          'S&P 500, Nasdaq and Dow all hit record highs after encouraging inflation data',
      text:
          'All three major indexes surged to record highs Wednesday after new data showed that inflation cooled in April after ticking up recently. The S&P 500, tech-heavy Nasdaq Composite and blue-chip Dow all closed at new record highs after the latest Consumer Price Index showed that prices were up 3.4% for the 12 months ended in April, easing from 3.5% the month before. The broad-market S&P 500 gained more than 1.2% on Wednesday and cracked the 5,300-level for the first time, closing at 5,308.15. The Nasdaq was about 1.4% higher, setting a new record at 16,742.39. The Dow, meanwhile, was up 350 points or 0.9% and teetered near the key 40,000-level, closing at 39,908. All three major indexes are tracking toward a winning week. Investors believe that the cooler inflation reading, coupled with a separate report showing weak retail sales in April, increases the likelihood that the Federal Reserve will cut interest rates this year. “Taken [together with retail sales] this supports a Fed rate cut in the fall,” Gary Pzegeo, head of fixed income at CIBC Private Wealth US, wrote in a note to clients Wednesday. “Markets are discounting a cut in September and have moved to price in a second cut by December.” Wednesday’s report landed mostly in line with economists’ expectations, which is a welcome turnabout from January, February and March, when CPI (and other inflation gauges) came in hot, hot, and hot. “This was a good report in the context of three hotter-than-expected [CPI] reports, and it makes it look like potentially those were bumps in the road rather than a really stagnant inflation environment,” Tyler Schipper, economics professor at the University of St. Thomas in Minnesota, told CNN in an interview. On a monthly basis, prices rose 0.3%, a slower pace of growth than the 0.4% seen in the two months prior, according to the Bureau of Labor Statistics’ CPI report. Economists were expecting a 0.4% monthly increase and an annual gain of 3.4%, according to FactSet consensus estimates. Rising gasoline and shelter costs accounted for more than 70% of the monthly increase in overall inflation, according to the report. While elevated housing costs and high prices at the pump continue to weigh on Americans, Wednesday’s report did provide some welcome news on another staple spending area: Grocery prices fell for the first time in a year, dropping 0.2% from March. A closely watched underlying measurement of inflation showed even more progress. Core CPI, which strips out the more volatile categories of energy and food, slowed from 3.8% to 3.6%, its lowest rate since April 2021. From the month before, core CPI ticked up by 0.3%, its slowest pace since the end of last year.',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2008640078-20240515132155853.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
    ),
    NewsItem(
      title: 'Debt — and delinquencies — are on the rise for Americans',
      text:
          'The economy has been resilient, the job market healthy and consumers keep spending, but more Americans are becoming financially overextended — especially on their credit cards. New data released Tuesday by the Federal Reserve Bank of New York showed that as household debt balances grew during the first quarter, delinquencies also marched higher. Notably, the percentage of credit card balances in serious delinquency (90 days or more late) climbed to its highest level since 2012. “In the first quarter of 2024, credit card and auto loan transition rates into serious delinquency continued to rise across all age groups,” Joelle Scally, regional economic principal within the Household and Public Policy Research Division at the New York Fed, said in a statement. “An increasing number of borrowers missed credit card payments, revealing worsening financial distress among some households.” Aggregate delinquency rates increased during the first quarter to 3.2% of outstanding debt in some stage of delinquency, the highest since the fourth quarter of 2020, according to the New York Fed’s latest Quarterly Report on Household Debt and Credit. The transitions into delinquency — especially serious delinquency — increased across all debt types, according to the report. Delinquencies fell to historic lows during the pandemic as consumers spent less during the health and safety lockdowns and were able to build up savings and pay off debt with those funds and economic stimulus payments. However, as supply chain and spending imbalances fueled domestic and global inflation — and subsequently a rise of interest rates — delinquencies have moved higher in recent years. While the delinquency transition rates remain below what was seen during the Great Recession, they’re running higher than what was seen pre-pandemic. Because of that, New York Fed researchers said they’re keeping a close watch on what this means for the well-being of Americans’ household finances and the overall economy. Overall household debt grew by 1.1% during the first quarter to \$17.69 trillion, according to data that is not adjusted for inflation. The quarterly increase was driven largely by mortgage balances. Credit card balances dipped (as they typically do post-holidays) by \$14 billion to \$1.12 trillion. However, when adjusting for inflation, balances have yet to surpass the levels seen in 2008. Higher balances can be attributed to population growth, an increase in online spending, the surging cost of new and used cars, as well as economy-powering consumer activity.',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-1310101654.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
    ),
    NewsItem(
      title: 'US wholesale inflation just hit its highest rate in a year',
      text:
          'Americans already contending with persistent and stubbornly high inflation just got more unwelcome news on Tuesday: There are more price hikes likely coming down the pike. Wholesale inflation picked up in April to its highest rate in a year, according to Bureau of Labor Statistics data released Tuesday. The Producer Price Index, which measures the change in prices that manufacturers pay to suppliers, was 2.2% for the 12 months ended in April, according to Bureau of Labor Statistics data released Tuesday. That gain is higher than what was seen in March, which was downwardly revised from 2.1% to 1.8%. On a monthly basis, prices rose 0.5%, a faster pace than March’s 0.1% loss (also downwardly revised) and ran much hotter than what economists had anticipated. Economists were expecting a monthly gain of 0.3%, according to FactSet consensus estimates. “The concern here is that we now have a trend, an upward trend in producer prices, which can only be passed through to consumers and result in upward pressure on consumer price inflation over the coming months,” Kurt Rankin, senior economist for the PNC Financial Services Group, told CNN in an interview. And that means interest rates will stay higher for longer and could further delay the Federal Reserve’s plans for cuts on that front, he said. On Tuesday, Fed Chair Jerome Powell said readings like the April PPI provide more justification to keep rates elevated for a longer period of time. But it does not necessarily mean the central bank will need to raise interest rates, Powell said while speaking at a Foreign Bankers Association event alongside European Central Bank Governing Council member Klaas Knot. Sticky, stubborn services inflation While higher energy costs (up 2% in April) helped to push goods prices higher, services inflation is what drove up the overall PPI last month. Nearly three-quarters of the April monthly gain was attributable to price hikes seen by producers of services, according to the report. Services providers saw a 0.6% increase in prices for the month, the fastest pace seen for that category since March 2022, Rankin noted. “Services has been the issue over the past year as consumers continue to spend money, and costs for services-oriented businesses is still stronger than goods inflation; but goods producer prices are now also rising after having fallen through most of 2023,” he said. PPI captures average price shifts before they reach consumers and serves as a potential bellwether for retail-level inflation in the months ahead. Although there was a welcome drop in food prices, which were down 0.7% for the month, April’s data shows that activity upstream is looking quite a bit choppy. Even when excluding the volatile components of food and energy, “core” PPI accelerated instead of slowing as economists had anticipated. The core index was up 2.4% for the 12 months ended in April — the highest annual rate since August of last year. On a monthly basis, core shot up 0.5% — well above estimates for a 0.2% increase. March’s core PPI was revised down to show that prices fell 0.1% from March and rose 2.1% annually. “Today’s PPI number means inflation through June, July, August, is going to continue to have supply side pressure” on businesses that deal more directly with consumers, Rankin said. “Now those same businesses have their own costs to pass onto consumers, which compounds with continued strong consumer demand.” The latest wholesale data is landing a day before an even more critical read on the state of inflation in the US: The Consumer Price Index for April will be released Wednesday morning.',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2148007797.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
    ),
    NewsItem(
      title: 'The Delivery Business Shows Why Unions Are Struggling to Expand',
      text:
          'Last year, two unions representing workers at three large automakers and UPS negotiated new labor contracts that included big raises and other gains. Leaders of the unions — the United Automobile Workers and the Teamsters — hoped the wins would help them organize workers across their industry. The U.A.W. won one vote to unionize a Volkswagen factory in Tennessee last month and lost one this month at two Mercedes-Benz plants in Alabama. The Teamsters have made even less progress at UPS’s big nonunion rivals in the delivery business, Amazon and FedEx. Polling shows that public support for unions is the highest it has been in decades. But labor experts said structural forces would make it hard for labor groups to increase their membership, which is the lowest it has been as a percentage of the total work force in decades. Unions also face stiff opposition from many employers and conservative political leaders. The Teamsters provide an instructive case study. Many of the workers doing deliveries for Amazon and FedEx work for contractors, typically small and medium-size businesses that can be hard to organize. And delivery workers employed directly by FedEx in its Express business are governed by a labor law that requires unions to organize all similar workers at the company nationally at once — a tougher standard than the one that applies to organizing employees at automakers, UPS and other employers. Some labor experts also said the Teamsters had not made as forceful a push as the U.A.W. to organize nonunion workers after securing a new contract with UPS. “You didn’t have that energy that you saw with the U.A.W.’s leaders,” said Jake Rosenfeld, a sociologist who studies labor at Washington University in St. Louis. Teamsters officials said the UPS deal, which increases the average annual compensation, including benefits, of a UPS driver to \$170,000 from \$145,000, was helping them gain members. At DHL, a delivery company where the union has long had a big presence, the union added 1,100 members last year and is pushing to gain another 1,500. The Teamsters are also pursuing a legal challenge against Amazon that could allow them to gain ground at the company and its contractors. “It’s been very helpful for us to mobilize,” Sean O’Brien, the Teamsters’ president, said in an interview, referring to the UPS contract. “We’ve set the standard in the industry.” But the union has also suffered losses. Yellow, a trucking company that employed 24,000 Teamsters, shut down and filed for bankruptcy protection last year. Amazon and FedEx said they were confident in their approach to managing and compensating workers. Amazon said it had made investments that bolstered pay and benefits at its delivery contractors. FedEx said its nonunion model allowed it to quickly increase pay whereas UPS’s union employees were bound by the terms of five-year contracts. “Our culture, built and tested over 50 years, is based on the philosophy that if we take care of our people, they will deliver outstanding service for our customers, which will drive business results for our company,” Tracy Brightman, FedEx’s chief people officer, said in a statement. Around 310,000 UPS employees belong to the Teamsters. Many of them see FedEx and Amazon drivers on their routes and talk about pay, benefits and working conditions. “We make much more money than anyone else in the industry,” said Essence Carlisle, a part-time package handler at UPS’s hub in Louisville, Ky. “I definitely intend to make a career here.”',
      image:
          'https://static01.nyt.com/images/2024/05/29/multimedia/28JPdelivery-workers1-print-hjcq/00delivery-workers-01-hjcq-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title: 'How China Pulled So Far Ahead on Industrial Policy',
      text:
          'For more than half a century, concerns about oil shortages or a damaged climate have spurred governments to invest in alternative energy sources. In the 1970s, President Jimmy Carter placed solar panels on the roof of the White House as a symbol of his commitment to developing energy from the sun. In the 1990s, Japan offered homeowners groundbreaking subsidies to install photovoltaic panels. And in the 2000s, Germany developed an innovative program that guaranteed consumers who adopted a solar energy system that they would sell their electricity at a profit. But no country has come close to matching the scale and tenacity of China’s support. The proof is in the production: In 2022, Beijing accounted for 85 percent of all clean-energy manufacturing investment in the world, according to the International Energy Agency. Now the United States, Europe and other wealthy nations are trying frantically to catch up. Hoping to correct past missteps on industrial policy and learn from China’s successes, they are spending huge amounts on subsidizing homegrown companies while also seeking to block competing Chinese products. They have made modest inroads: Last year, the energy agency said, China’s share of new clean-energy factory investment fell to 75 percent. The problem for the West, though, is that China’s industrial dominance is underpinned by decades of experience using the power of a one-party state to pull all the levers of government and banking, while encouraging frenetic competition among private companies. China’s unrivaled production of solar panels and electric vehicles is built on an earlier cultivation of the chemical, steel, battery and electronics industries, as well as large investments in rail lines, ports and highways. From 2017 to 2019, it spent an extraordinary 1.7 percent of its gross domestic product on industrial support, more than twice the percentage of any other country, according to an analysis from the Center for Strategic and International Studies. That spending included low-cost loans from state-controlled banks and cheap land from provincial governments, with little expectation that the companies they were aiding would turn immediate profits. And it was accompanied by what the United States and other countries have charged was China’s willingness to skirt international trade agreements, engage in intellectual property theft and use forced labor. It all combined to help put China in the position today to flood rival countries with low-cost electric cars, solar cells and lithium batteries, as consumers across the wealthy world are increasingly turning to green tech. China now controls over 80 percent of worldwide production of every step of solar panel manufacturing, for example. “There’s enormous economies of scale by going big as China did,” Gregory Nemet, a professor of public policy at the University of Wisconsin who has studied the global solar industry. When the investments resulted in overcapacity, suppressing the profitability of China’s companies, Beijing was willing to ride out the losses. President Biden and European leaders are determined to develop their countries’ manufacturing capacity in advanced technologies like semiconductors, electric vehicles and batteries, in part by adopting some of China’s tactics to nurture industries. China’s rise to dominate key global manufacturing sectors showed the potential and power of national industrial policy, said Jennifer Harris, a former Biden aide who now leads the Economy and Society Initiative at the William and Flora Hewlett Foundation.',
      image:
          'https://static01.nyt.com/images/2024/05/24/multimedia/00china-US-01-kzvw/00china-US-01-kzvw-superJumbo.jpg?quality=75&auto=webp',
    ),
    NewsItem(
      title:
          'Rent Is Harder to Handle and Inflation Is a Burden, a Fed Financial Survey Finds',
      text:
          'American households struggled to cover some day-to-day expenses in 2023, including rent, and many remained glum about inflation even as price increases slowed. That’s one of several takeaways from a new Federal Reserve report on the financial well-being of American households. The report suggested that American households remained in similar financial shape to 2022 — but its details also provided a split screen view of the U.S. economy. On the one hand, households feel good about their job and wage growth prospects and are saving for retirement, evidence that the benefits of very low unemployment and rapid hiring are tangible. And about 72 percent of adults reported either doing OK or living comfortably financially, in line with 73 percent the year before. But that optimistic share is down from 78 percent in 2021, when households had just benefited from repeated pandemic stimulus checks. And signs of financial stress tied to higher prices lingered, and in some cases intensified, just under the report\'s surface. Inflation cooled notably over the course of 2023, falling to 3.4 percent at the end of the year from 6.5 percent going into the year. Yet 65 percent of adults said that price changes had made their financial situation worse. People with lower income were much more likely to report that strain: Ninety-six percent of people making less than \$25,000 said that their situations had been made worse. Renters also reported increasing challenges in keeping up with their bills. The report showed that 19 percent of renters reported being behind on their rent at some point in the year, up two percentage points from 2022. Interestingly, slightly fewer households were taking action — like switching to cheaper products or delaying big purchases — to defray their higher costs compared with 2022. Still, about 79 percent of households indicated that they had done something to offset climbing costs, suggesting that Americans have not yet broadly accepted high prices as an unavoidable reality of life. The Fed’s annual checkup on household finances is particularly relevant this year. Consumer confidence has been depressed even though the job market is booming and inflation is cooling notably, a mystery that has befuddled analysts and bedeviled the White House. Polls show that President Biden is suffering as Americans take a dim view of the economy under his administration. Donald J. Trump, the presumptive Republican nominee for November’s presidential election, has been hammering Mr. Biden’s economic record. Editors’ Picks What E.R. Doctors Want You to Know About Extreme Heat A Manhattan Apartment Full of Salvaged Finds 6 Water Workouts to Try This Summer The report underscores that even though inflation is cooling, it remains a major concern for many Americans, one that may be a big enough worry to take the shine away from an economy that is growing quickly and adding jobs. Part of the continued concern, many economists speculate, is because households pay more attention to price levels — which are sharply higher than they were as recently as 2020 — than to price changes, which is what statisticians mean when they talk about inflation. To use an example, a person may focus on the fact that his or her latte now costs \$5 instead of \$3, rather than the fact that it is no longer climbing in price as quickly as it was last year. “When I talk to folks, they all tell me that they want interest rates to be lower and they also tell me that prices are too high,” Raphael Bostic, the president of the Federal Reserve Bank of Atlanta, said in an interview with reporters on Tuesday morning. “People remember where prices used to be, and they remember that they didn’t have to talk about inflation, and that was a very comfortable place.”',
      image:
          'https://static01.nyt.com/images/2024/05/21/multimedia/21dc-econ-bjtz/21dc-econ-bjtz-superJumbo.jpg?quality=75&auto=webp',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 65, 16, 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'News',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [getNews()],
              ),
            )),
          ),
          const BottomBar(),
        ],
      ),
    );
  }

  Widget getNews() {
    List<Widget> list = [];
    for (var item in news) {
      list.add(Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => CurrentNewsPage(
                        news: item,
                      )),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF28304c),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(children: [
              Container(
                height: 112,
                width: 112,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          item.image!,
                        ))),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 28),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              item.title!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              'Read more',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 16,
                                  color: Color(0xFF5E81FF),
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ));
    }
    return Column(
      children: list,
    );
  }
}
