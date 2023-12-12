import java.util.*;

public class RED{
	public static void main(String [] args){
		Scanner sc = new Scanner(System.in);
		Random random = new Random();
		System.out.print("Enter the number of Packets :");
		int numPackets = sc.nextInt();
		System.out.print("Enter the Queue Size : ");
		int queSize = sc.nextInt();
		float minProb = 0.1F;
		float maxProb = 0.7F;
		float dropProb=minProb;
		int queLen=0;
		for(int i=1;i<=numPackets;i++){
			if(queLen>=queSize){
				System.out.println("Packet-"+i+" dropped (Queue Full)");
				dropProb = minProb;
			}
			else if(random.nextFloat()<dropProb){
				dropProb += (maxProb - minProb)/(numPackets-1);
				System.out.println("Packet-"+i+" dropped (Random)");
			}
			else{
				System.out.println("Packet-"+i+" inserted into Queue");
				dropProb = minProb;
				queLen++;
			}
		}
	}
}
