import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import IntakeForm from "@/components/form/IntakeForm";

export default function Home() {
  return (
    <div className="bg-[#fffced] min-h-screen sitcky overflow-hidden">
      <header>
        <h1 className="text-6xl text-center m-5 font-bold font-serif text-[#43635f]">
          Find your perfect clinician
        </h1>
        <p className="text-center text-lg mx-5 text-[#43635f]">
          Tell us about your preferences and we will match you with the most
          suitable clinician.
        </p>
      </header>
      <main>
        <Card className="mx-auto my-10 max-w-3xl shadow-lg rounded-lg">
          <CardHeader>
            <CardTitle className="text-3xl text-[#43635f] font-serif">
              Patient Intake Form
            </CardTitle>
            <CardDescription className="text-lg text-[#43653f]">
              Help us understand your needs to find the most suitable clinician
              for you.
            </CardDescription>
          </CardHeader>
          <CardContent>
            <IntakeForm />
          </CardContent>
        </Card>
      </main>
    </div>
  );
}
