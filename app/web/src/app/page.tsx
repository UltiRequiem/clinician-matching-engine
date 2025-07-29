"use client";

import { Button } from "@/components/ui/button";
import {
  Form,
  FormControl,
  FormDescription,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/ui/form";
import { Select } from "@/components/ui/select";
import { STATES } from "@/lib/constants";
import { zodResolver } from "@hookform/resolvers/zod";
import {
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { useForm } from "react-hook-form";
import z from "zod";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";

export default function Home() {
  const formSchema = z.object({
    state: z.string().min(1, "State is required"),
  });

  const form = useForm({
    resolver: zodResolver(formSchema),
    defaultValues: {
      state: "",
    },
  });

  function onSubmit(data: z.infer<typeof formSchema>) {
    console.log("Form submitted with data:", data);
  }

  return (
    <div className="bg-[#fffced] min-h-screen overflow-hidden">
      <header>
        <h1 className="text-6xl text-center m-5 font-bold font-serif text-[#43635f]">
          Find your perfect clinician
        </h1>
        <p className="text-center text-lg mb-5 text-[#43635f]">
          Tell us about your preferences and we will match you with the most
          suitable clinician.
        </p>
      </header>
      <main>
        <Card className="m-10">
          <CardHeader>
            {/* <CardTitle className="text-3xl">Card title</CardTitle>
            <CardDescription>
              Help us understand your needs to find the most suitable clinician
              for you.
            </CardDescription> */}
          </CardHeader>
          <CardContent>
            <Form {...form}>
              <form
                onSubmit={form.handleSubmit(onSubmit)}
                className="space-y-8"
              >
                <FormField
                  control={form.control}
                  name="state"
                  render={({ field }) => (
                    <FormItem>
                      <FormLabel>State of residence</FormLabel>
                      <FormControl>
                        <Select
                          onValueChange={field.onChange}
                          defaultValue={field.value}
                        >
                          <SelectTrigger className="w-[180px]">
                            <SelectValue placeholder="Select a state" />
                          </SelectTrigger>
                          <SelectContent>
                            {STATES.map((state) => (
                              <SelectItem value={state} key={state}>
                                {state}
                              </SelectItem>
                            ))}
                          </SelectContent>
                        </Select>
                      </FormControl>
                      <FormDescription />
                      <FormMessage />
                    </FormItem>
                  )}
                />
                <Button type="submit">Submit</Button>
              </form>
            </Form>
          </CardContent>
        </Card>
      </main>
    </div>
  );
}
